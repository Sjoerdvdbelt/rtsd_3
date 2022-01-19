from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='jiwy_simulator',
            namespace='jiwy',
            executable='jiwy_simulator',
            name='jiwy'
        ),
        Node(
            package='light_detection_3',
            namespace='jiwy',
            executable='bright_position',
            name='brightness'
        ),
        Node(
            package='image_tools',
            namespace='webcam',
            executable='cam2image',
            name='webcam',
            remappings=[
                ('/webcam/image', '/jiwy/webcam_input')
            ]
        ),
        Node(
            package='image_tools',
            namespace='showimage',
            executable='showimage',
            name='showimage',
            remappings=[
                ('/showimage/image', '/jiwy/webcam_output')
            ]
        )
    ])