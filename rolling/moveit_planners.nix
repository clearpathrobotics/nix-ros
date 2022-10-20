{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  moveit_planners_ompl,
  pilz_industrial_motion_planner,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_planners";
  pkgFinal = final.rolling.moveit_planners;
  src = srcs.moveit.moveit_planners;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    moveit_planners_ompl
    pilz_industrial_motion_planner
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
