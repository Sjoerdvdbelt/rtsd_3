import subprocess

command_talk = """ ros2 run ros2-xenomai talker --ros-args -p "topicName:=setpoint"
-p "xddpPort:=1" """
command_listen = """ ros2 run ros2-xenomai listener --ros-args -p "topicName:=position"
-p "xddpPort:=2" """


p1 = subprocess.Popen(command_talk.split());
p2 = subprocess.Popen(command_listen.split());