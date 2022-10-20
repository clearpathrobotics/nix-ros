{
  catkin,
  diagnostic_msgs,
  hls_lfcd_lds_driver,
  joint_state_publisher,
  robot_state_publisher,
  roscpp,
  rosserial_python,
  sensor_msgs,
  std_msgs,
  turtlebot3_description,
  turtlebot3_msgs,
  turtlebot3_teleop,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_bringup";
  pkgFinal = final.noetic.turtlebot3_bringup;
  src = srcs.turtlebot3.turtlebot3_bringup;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    roscpp
    sensor_msgs
    std_msgs
    turtlebot3_msgs
  ];

  colconRunDepends = [
    diagnostic_msgs
    hls_lfcd_lds_driver
    joint_state_publisher
    robot_state_publisher
    roscpp
    rosserial_python
    sensor_msgs
    std_msgs
    turtlebot3_description
    turtlebot3_msgs
    turtlebot3_teleop
  ];

  colconTestDepends = [
  ];
}
