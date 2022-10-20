{
  action_tutorials_interfaces,
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
  control_msgs,
  example_interfaces,
  geometry_msgs,
  launch_ros,
  launch_testing,
  rclpy,
  rosidl_runtime_py,
  sensor_msgs,
  std_msgs,
  std_srvs,
  teleop_tools_msgs,
  test_msgs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joy_teleop";
  pkgFinal = final.rolling.joy_teleop;
  src = srcs.teleop_tools.joy_teleop;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    control_msgs
    rclpy
    rosidl_runtime_py
    sensor_msgs
    teleop_tools_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
    action_tutorials_interfaces
    ament_copyright
    ament_flake8
    ament_pep257
    ament_xmllint
    example_interfaces
    geometry_msgs
    launch_ros
    launch_testing
    std_msgs
    std_srvs
    test_msgs
  ];
}
