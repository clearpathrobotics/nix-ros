{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  moveit_core,
  moveit_planners,
  moveit_plugins,
  moveit_ros,
  moveit_setup_assistant,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit";
  pkgFinal = final.rolling.moveit;
  src = srcs.moveit.moveit;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    moveit_core
    moveit_planners
    moveit_plugins
    moveit_ros
    moveit_setup_assistant
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
