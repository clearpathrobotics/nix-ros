{
  ament_cmake,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamixel_sdk_custom_interfaces";
  pkgFinal = final.rolling.dynamixel_sdk_custom_interfaces;
  src = srcs.dynamixel_sdk.dynamixel_sdk_custom_interfaces;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_runtime
  ];

  colconTestDepends = [
  ];
}
