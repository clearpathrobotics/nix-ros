{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  dolly_follow,
  dolly_gazebo,
  dolly_ignition,
  dolly_tests,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dolly";
  pkgFinal = final.rolling.dolly;
  src = srcs.dolly.dolly;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    dolly_follow
    dolly_gazebo
    dolly_ignition
    dolly_tests
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
