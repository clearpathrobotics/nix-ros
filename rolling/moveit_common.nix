{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  backward_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_common";
  pkgFinal = final.rolling.moveit_common;
  src = srcs.moveit.moveit_common;

  colconBuildDepends = [
    ament_cmake
    backward_ros
  ];

  colconRunDepends = [
    backward_ros
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
