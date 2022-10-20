{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  builtin_interfaces,
  composition,
  demo_nodes_py,
  launch_ros,
  launch_xml,
  launch_yaml,
  lifecycle,
  osrf_pycommon,
  python3Packages,
  rclcpp_components,
  rclpy,
  rosgraph_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_launch_ros";
  pkgFinal = final.rolling.test_launch_ros;
  src = srcs.launch_ros.test_launch_ros;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    builtin_interfaces
    composition
    demo_nodes_py
    launch_ros
    launch_xml
    launch_yaml
    lifecycle
    osrf_pycommon
    python3Packages.pytest
    python3Packages.pyyaml
    rclcpp_components
    rclpy
    rosgraph_msgs
  ];
}
