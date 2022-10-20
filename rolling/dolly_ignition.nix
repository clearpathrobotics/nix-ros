{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  dolly_follow,
  ros2launch,
  rviz2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dolly_ignition";
  pkgFinal = final.rolling.dolly_ignition;
  src = srcs.dolly.dolly_ignition;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    dolly_follow
    ros2launch
    rviz2
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
