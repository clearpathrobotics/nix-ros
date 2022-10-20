{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  dolly_follow,
  gazebo_ros_pkgs,
  ros2launch,
  rviz2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dolly_gazebo";
  pkgFinal = final.rolling.dolly_gazebo;
  src = srcs.dolly.dolly_gazebo;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    dolly_follow
    gazebo_ros_pkgs
    ros2launch
    rviz2
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
