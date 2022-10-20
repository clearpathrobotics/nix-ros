{
  ament_cmake,
  ament_cmake_clang_format,
  ament_cmake_ros,
  geometry_msgs,
  pluginlib,
  rviz_common,
  rviz_rendering,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "snowbot_operating_system";
  pkgFinal = final.rolling.snowbot_operating_system;
  src = srcs.snowbot_operating_system.snowbot_operating_system;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_ros
    geometry_msgs
    pluginlib
    rviz_common
    rviz_rendering
  ];

  colconRunDepends = [
    ament_cmake_ros
    geometry_msgs
    pluginlib
    rviz_common
    rviz_rendering
  ];

  colconTestDepends = [
    ament_cmake_clang_format
  ];
}
