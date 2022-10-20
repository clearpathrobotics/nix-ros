{
  catkin,
  moveit_resources_prbt_ikfast_manipulator_plugin,
  moveit_resources_prbt_moveit_config,
  moveit_resources_prbt_support,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_prbt_pg70_support";
  pkgFinal = final.noetic.moveit_resources_prbt_pg70_support;
  src = srcs.moveit_resources.moveit_resources_prbt_pg70_support;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    moveit_resources_prbt_ikfast_manipulator_plugin
    moveit_resources_prbt_moveit_config
    moveit_resources_prbt_support
    xacro
  ];

  colconTestDepends = [
  ];
}
