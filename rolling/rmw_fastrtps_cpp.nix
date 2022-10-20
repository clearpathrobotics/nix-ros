{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  fastcdr,
  fastrtps,
  fastrtps_cmake_module,
  osrf_testing_tools_cpp,
  rcpputils,
  rcutils,
  rmw,
  rmw_dds_common,
  rmw_fastrtps_shared_cpp,
  rosidl_runtime_c,
  rosidl_runtime_cpp,
  rosidl_typesupport_fastrtps_c,
  rosidl_typesupport_fastrtps_cpp,
  test_msgs,
  tracetools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmw_fastrtps_cpp";
  pkgFinal = final.rolling.rmw_fastrtps_cpp;
  src = srcs.rmw_fastrtps.rmw_fastrtps_cpp;

  colconBuildDepends = [
    ament_cmake_ros
    fastcdr
    fastrtps
    fastrtps_cmake_module
    rcpputils
    rcutils
    rmw
    rmw_dds_common
    rmw_fastrtps_shared_cpp
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_fastrtps_c
    rosidl_typesupport_fastrtps_cpp
    tracetools
  ];

  colconRunDepends = [
    ament_cmake
    fastcdr
    fastrtps
    fastrtps_cmake_module
    rcpputils
    rcutils
    rmw
    rmw_dds_common
    rmw_fastrtps_shared_cpp
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_fastrtps_c
    rosidl_typesupport_fastrtps_cpp
    tracetools
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    osrf_testing_tools_cpp
    test_msgs
  ];
}
