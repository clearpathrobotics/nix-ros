{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "soccer_vision_attribute_msgs";
  pkgFinal = final.rolling.soccer_vision_attribute_msgs;
  src = srcs.soccer_interfaces.soccer_vision_attribute_msgs;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
  ];

  colconRunDepends = [
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
