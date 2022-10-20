{
  ament_cmake,
  builtin_interfaces,
  rosidl_default_generators,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rclpy_message_converter_msgs";
  pkgFinal = final.rolling.rclpy_message_converter_msgs;
  src = srcs.rospy_message_converter.rclpy_message_converter_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
