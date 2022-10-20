{
  action_msgs,
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  osrf_testing_tools_cpp,
  rcl,
  rcutils,
  rmw,
  rmw_implementation_cmake,
  rosidl_runtime_c,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcl_action";
  pkgFinal = final.rolling.rcl_action;
  src = srcs.rcl.rcl_action;

  colconBuildDepends = [
    action_msgs
    ament_cmake_ros
    rcl
    rcutils
    rmw
    rosidl_runtime_c
  ];

  colconRunDepends = [
    action_msgs
    rcl
    rcutils
    rmw
    rosidl_runtime_c
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    osrf_testing_tools_cpp
    rmw_implementation_cmake
    test_msgs
  ];
}
