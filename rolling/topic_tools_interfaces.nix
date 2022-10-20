{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "topic_tools_interfaces";
  pkgFinal = final.rolling.topic_tools_interfaces;
  src = srcs.topic_tools.topic_tools_interfaces;

  colconBuildDepends = [
    ament_cmake_auto
    builtin_interfaces
    rosidl_default_generators
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
