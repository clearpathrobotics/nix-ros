{
  ament_cmake,
  angles,
  controller_interface,
  joint_trajectory_controller,
  lifecycle_msgs,
  pluginlib,
  rclcpp_lifecycle,
  rcutils,
  realtime_tools,
  std_msgs,
  std_srvs,
  ur_dashboard_msgs,
  ur_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ur_controllers";
  pkgFinal = final.rolling.ur_controllers;
  src = srcs.ur_robot_driver.ur_controllers;

  colconBuildDepends = [
    ament_cmake
    angles
    controller_interface
    joint_trajectory_controller
    lifecycle_msgs
    pluginlib
    rclcpp_lifecycle
    rcutils
    realtime_tools
    std_msgs
    std_srvs
    ur_dashboard_msgs
    ur_msgs
  ];

  colconRunDepends = [
    angles
    controller_interface
    joint_trajectory_controller
    lifecycle_msgs
    pluginlib
    rclcpp_lifecycle
    rcutils
    realtime_tools
    std_msgs
    std_srvs
    ur_dashboard_msgs
    ur_msgs
  ];

  colconTestDepends = [
  ];
}
