{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  ament_xmllint,
  composition_interfaces,
  python3Packages,
  rcl_interfaces,
  rclcpp_components,
  rclpy,
  ros2cli,
  ros2node,
  ros2param,
  ros2pkg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2component";
  pkgFinal = final.rolling.ros2component;
  src = srcs.ros2cli.ros2component;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_index_python
    composition_interfaces
    rcl_interfaces
    rclcpp_components
    rclpy
    ros2cli
    ros2node
    ros2param
    ros2pkg
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    ament_xmllint
    python3Packages.pytest
    python3Packages.pytest-timeout
  ];
}
