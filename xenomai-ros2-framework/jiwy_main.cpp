#include <stdio.h>
#include <unistd.h>
#include <iterator>
#include <signal.h>
#include <vector>
#include <sys/syscall.h>

#include "framework/multiCommClass.h"
#include "framework/runnableClass.h"
#include "framework/superThread.h"
#include "framework/icoCommClass.h"
// #include <Your 20-sim-code-generated h-file?> Don't forget to compile the cpp file by adding it to CMakeLists.txt
#include "Controller.h"

volatile bool exitbool = false;

void exit_handler(int s)
{
    printf("Caught signal %d\n", s);
    exitbool = true;
}

void MyReadConvert(const double* src, double *dst)
{
    // Convert read data to ros2 compatible values
    printf("%lf", src[0]);
}

void MyWriteConvert(const double* src, double *dst)
{
    // Convert write data to jiwy / controller compatible values
}

int main()
{
    //CREATE CNTRL-C HANDLER
    signal(SIGINT, exit_handler);

    printf("Press Ctrl-C to stop program\n"); // Note: this will 
        // not kill the program; just jump out of the wait loop. Hence,
        // you can still do proper clean-up. You are free to alter the
        // way of determining when to stop (e.g., run for a fixed time).


    // CONFIGURE, CREATE AND START THREADS HERE

    // x axis -> P2
    // y axis -> P1
    // [ P1_PWM, P1_OUT_1, P2_PWM, P2_OUT_1,
    //  P3_PWM, P3_OUT_1, P4_PWM, P4_OUT_1 ]
    int _sendParameters[] = {0, -1, 1, -1, -1, -1, -1, -1};
    // [ P1_ENC, P1_IN_1, P1_IN2, P2_ENC, P2_IN_1, P2_IN2,
    //  P3_ENC, P3_IN_1, P3_IN2, P4_ENC, P4_IN_1, P4_IN2]
    int _receiveParameters[] = {0, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1};

    IcoComm *icoComm = new IcoComm(_sendParameters, _receiveParameters);
    //icoComm->SetReadConvertFcn(&MyReadConvert);
    //icoComm->SetWriteConvertFcn(&MyWriteConvert);

    int _sendParameters_xddp[] = {0, 1, 2, 3};
    int _receiveParameters_xddp[] = {0, 1};
    XDDPComm *xddpCommSend = new XDDPComm(1, 3, 4, _sendParameters_xddp);
    XDDPComm *xddpCommReceive = new XDDPComm(2, 4, 2, _receiveParameters_xddp);

    frameworkComm *controller_uPorts[] = {
        xddpCommSend,
        icoComm};
    frameworkComm *controller_yPorts[] = {
        xddpCommReceive,
        icoComm};

    printf("Setting up controller\n");

    Controller *controller_class = new Controller;
    runnable *controller_runnable = new wrapper<Controller>(
        controller_class, controller_uPorts,
        controller_yPorts, 2, 2
    );
    controller_runnable->setSize(4, 2);

    printf("Starting threads\n");

    xenoThread controllThread(controller_runnable);
    controllThread.init(1000000, 99, 1);
    controllThread.start("controller");

    printf("Threads started\n");


    // WAIT FOR CNTRL-C
    timespec t = {.tv_sec=0, .tv_nsec=100000000}; // 1/10 second

    while (!exitbool)
    {
        // Let the threads do the real work
        nanosleep(&t, NULL);
        // Wait for Ctrl-C to exit
    }
    printf("Ctrl-C was pressed: Stopping gracefully...\n");

    //CLEANUP HERE


    return 0;
}