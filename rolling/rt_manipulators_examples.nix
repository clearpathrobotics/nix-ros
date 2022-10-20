{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rt_manipulators_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rt_manipulators_examples";
  pkgFinal = final.rolling.rt_manipulators_examples;
  src = srcs.rt_manipulators_cpp.rt_manipulators_examples;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rt_manipulators_cpp
  ];

  colconRunDepends = [
    rclcpp
    rt_manipulators_cpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
