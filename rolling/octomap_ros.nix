{
  ament_cmake_auto,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  octomap_msgs,
  sensor_msgs,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap_ros";
  pkgFinal = final.rolling.octomap_ros;
  src = srcs.octomap_ros.octomap_ros;

  colconBuildDepends = [
    ament_cmake_auto
    octomap_msgs
    sensor_msgs
    tf2
  ];

  colconRunDepends = [
    octomap_msgs
    sensor_msgs
    tf2
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
