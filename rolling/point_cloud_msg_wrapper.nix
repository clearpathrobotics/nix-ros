{
  ament_cmake,
  ament_cmake_auto,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "point_cloud_msg_wrapper";
  pkgFinal = final.rolling.point_cloud_msg_wrapper;
  src = srcs.point_cloud_msg_wrapper.point_cloud_msg_wrapper;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_auto
    sensor_msgs
  ];

  colconRunDepends = [
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    geometry_msgs
  ];
}
