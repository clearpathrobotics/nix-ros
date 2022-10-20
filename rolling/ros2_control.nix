{
  ament_cmake,
  controller_interface,
  controller_manager,
  controller_manager_msgs,
  hardware_interface,
  joint_limits,
  ros2_control_test_assets,
  ros2controlcli,
  transmission_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2_control";
  pkgFinal = final.rolling.ros2_control;
  src = srcs.ros2_control.ros2_control;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    controller_interface
    controller_manager
    controller_manager_msgs
    hardware_interface
    joint_limits
    ros2_control_test_assets
    ros2controlcli
    transmission_interface
  ];

  colconTestDepends = [
  ];
}
