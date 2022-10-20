{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  dolly_follow,
  dolly_ignition,
  launch_testing,
  ros2launch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dolly_tests";
  pkgFinal = final.rolling.dolly_tests;
  src = srcs.dolly.dolly_tests;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    dolly_follow
    dolly_ignition
    launch_testing
    ros2launch
  ];

  colconRunDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    dolly_follow
    dolly_ignition
    launch_testing
    ros2launch
  ];

  colconTestDepends = [
  ];
}
