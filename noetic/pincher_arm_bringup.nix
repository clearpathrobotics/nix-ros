{
  actionlib,
  arbotix_controllers,
  arbotix_python,
  catkin,
  control_msgs,
  pincher_arm_description,
  robot_state_publisher,
  rospy,
  sensor_msgs,
  std_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pincher_arm_bringup";
  pkgFinal = final.noetic.pincher_arm_bringup;
  src = srcs.pincher_arm.pincher_arm_bringup;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    actionlib
    arbotix_controllers
    arbotix_python
    control_msgs
    pincher_arm_description
    robot_state_publisher
    rospy
    sensor_msgs
    std_msgs
    xacro
  ];

  colconTestDepends = [
  ];
}
