{
  action_msgs,
  ament_cmake,
  ament_cmake_core,
  ament_lint_auto,
  ament_lint_common,
  rosidl_core_generators,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_default_generators";
  pkgFinal = final.rolling.rosidl_default_generators;
  src = srcs.rosidl_defaults.rosidl_default_generators;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    action_msgs
    ament_cmake_core
    rosidl_core_generators
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
