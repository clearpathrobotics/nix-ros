{
  catkin,
  controller_interface,
  controller_manager_msgs,
  hardware_interface,
  pluginlib,
  python3Packages,
  roscpp,
  rosparam,
  rospy,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "controller_manager";
  pkgFinal = final.noetic.controller_manager;
  src = srcs.ros_control.controller_manager;

  colconBuildDepends = [
    catkin
    controller_interface
    controller_manager_msgs
    hardware_interface
    pluginlib
    python3Packages.setuptools
    roscpp
  ];

  colconRunDepends = [
    controller_interface
    controller_manager_msgs
    hardware_interface
    pluginlib
    roscpp
    rosparam
    rospy
    std_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
