{
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_param_builder,
  launch_ros,
  srdfdom,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_configs_utils";
  pkgFinal = final.rolling.moveit_configs_utils;
  src = srcs.moveit.moveit_configs_utils;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_index_python
    launch
    launch_param_builder
    launch_ros
    srdfdom
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
