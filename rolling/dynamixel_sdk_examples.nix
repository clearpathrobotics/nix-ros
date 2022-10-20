{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  dynamixel_sdk,
  dynamixel_sdk_custom_interfaces,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamixel_sdk_examples";
  pkgFinal = final.rolling.dynamixel_sdk_examples;
  src = srcs.dynamixel_sdk.dynamixel_sdk_examples;

  colconBuildDepends = [
    ament_cmake
    dynamixel_sdk
    dynamixel_sdk_custom_interfaces
    rclcpp
  ];

  colconRunDepends = [
    dynamixel_sdk
    dynamixel_sdk_custom_interfaces
    rclcpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
