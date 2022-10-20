{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_lint_auto,
  ament_lint_common,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "system_modes_msgs";
  pkgFinal = final.rolling.system_modes_msgs;
  src = srcs.system_modes.system_modes_msgs;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
  ];

  colconRunDepends = [
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_lint_auto
    ament_lint_common
  ];
}
