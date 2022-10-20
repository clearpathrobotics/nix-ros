{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rosidl_core_generators,
  rosidl_core_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "unique_identifier_msgs";
  pkgFinal = final.rolling.unique_identifier_msgs;
  src = srcs.unique_identifier_msgs.unique_identifier_msgs;

  colconBuildDepends = [
    ament_cmake
    rosidl_core_generators
  ];

  colconRunDepends = [
    rosidl_core_runtime
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
