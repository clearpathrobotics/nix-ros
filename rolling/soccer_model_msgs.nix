{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  soccer_geometry_msgs,
  soccer_vision_attribute_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "soccer_model_msgs";
  pkgFinal = final.rolling.soccer_model_msgs;
  src = srcs.soccer_interfaces.soccer_model_msgs;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    rosidl_default_generators
    soccer_geometry_msgs
    soccer_vision_attribute_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rosidl_default_runtime
    soccer_geometry_msgs
    soccer_vision_attribute_msgs
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
