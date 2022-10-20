{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  builtin_interfaces,
  geometry_msgs,
  python3Packages,
  rclpy,
  rclpy_message_converter_msgs,
  rosidl_default_generators,
  rosidl_parser,
  rosidl_runtime_py,
  std_msgs,
  std_srvs,
  tf2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rclpy_message_converter";
  pkgFinal = final.rolling.rclpy_message_converter;
  src = srcs.rospy_message_converter.rclpy_message_converter;

  colconBuildDepends = [
    builtin_interfaces
    rclpy
    rosidl_default_generators
  ];

  colconRunDepends = [
    python3Packages.numpy
    rclpy
    rosidl_parser
    rosidl_runtime_py
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    geometry_msgs
    python3Packages.pytest
    rclpy_message_converter_msgs
    std_msgs
    std_srvs
    tf2_msgs
  ];
}
