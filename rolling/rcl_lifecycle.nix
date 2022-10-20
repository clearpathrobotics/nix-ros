{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  lifecycle_msgs,
  osrf_testing_tools_cpp,
  rcl,
  rcutils,
  rmw,
  rosidl_runtime_c,
  tracetools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcl_lifecycle";
  pkgFinal = final.rolling.rcl_lifecycle;
  src = srcs.rcl.rcl_lifecycle;

  colconBuildDepends = [
    ament_cmake_ros
    lifecycle_msgs
    rcl
    rcutils
    rmw
    rosidl_runtime_c
    tracetools
  ];

  colconRunDepends = [
    lifecycle_msgs
    rcl
    rcutils
    rmw
    rosidl_runtime_c
    tracetools
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    osrf_testing_tools_cpp
  ];
}
