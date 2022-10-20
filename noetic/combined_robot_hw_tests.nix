{
  catkin,
  combined_robot_hw,
  controller_manager,
  controller_manager_msgs,
  controller_manager_tests,
  hardware_interface,
  pluginlib,
  roscpp,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "combined_robot_hw_tests";
  pkgFinal = final.noetic.combined_robot_hw_tests;
  src = srcs.ros_control.combined_robot_hw_tests;

  colconBuildDepends = [
    catkin
    combined_robot_hw
    controller_manager
    hardware_interface
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    combined_robot_hw
    controller_manager
    hardware_interface
    pluginlib
    roscpp
  ];

  colconTestDepends = [
    controller_manager_msgs
    controller_manager_tests
    rostest
  ];
}
