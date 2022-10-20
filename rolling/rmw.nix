{
  ament_cmake_gmock,
  ament_cmake_ros,
  ament_cmake_version,
  ament_lint_auto,
  ament_lint_common,
  osrf_testing_tools_cpp,
  rcutils,
  rosidl_runtime_c,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmw";
  pkgFinal = final.rolling.rmw;
  src = srcs.rmw.rmw;

  colconBuildDepends = [
    ament_cmake_ros
    ament_cmake_version
    rcutils
    rosidl_runtime_c
  ];

  colconRunDepends = [
    rcutils
    rosidl_runtime_c
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    osrf_testing_tools_cpp
  ];
}
