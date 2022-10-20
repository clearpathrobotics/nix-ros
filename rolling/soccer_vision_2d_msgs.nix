{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rosidl_default_generators,
  rosidl_default_runtime,
  soccer_vision_attribute_msgs,
  vision_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "soccer_vision_2d_msgs";
  pkgFinal = final.rolling.soccer_vision_2d_msgs;
  src = srcs.soccer_interfaces.soccer_vision_2d_msgs;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
    soccer_vision_attribute_msgs
    vision_msgs
  ];

  colconRunDepends = [
    rosidl_default_runtime
    soccer_vision_attribute_msgs
    vision_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
