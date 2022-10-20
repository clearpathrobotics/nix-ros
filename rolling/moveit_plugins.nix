{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  moveit_simple_controller_manager,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_plugins";
  pkgFinal = final.rolling.moveit_plugins;
  src = srcs.moveit.moveit_plugins;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    moveit_simple_controller_manager
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
