{
  catkin,
  controller_interface,
  controller_manager,
  controller_manager_msgs,
  hardware_interface,
  pluginlib,
  python3Packages,
  rosbash,
  roscpp,
  rosnode,
  rospy,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "controller_manager_tests";
  pkgFinal = final.noetic.controller_manager_tests;
  src = srcs.ros_control.controller_manager_tests;

  colconBuildDepends = [
    catkin
    controller_interface
    controller_manager
    hardware_interface
    pluginlib
    python3Packages.setuptools
    roscpp
  ];

  colconRunDepends = [
    controller_interface
    controller_manager
    controller_manager_msgs
    hardware_interface
    pluginlib
    roscpp
    rospy
  ];

  colconTestDepends = [
    rosbash
    rosnode
    rostest
  ];
}
