{
  catkin,
  prbt_ikfast_manipulator_plugin,
  prbt_moveit_config,
  prbt_support,
  schunk_description,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "prbt_pg70_support";
  pkgFinal = final.noetic.prbt_pg70_support;
  src = srcs.prbt_grippers.prbt_pg70_support;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    prbt_ikfast_manipulator_plugin
    prbt_moveit_config
    prbt_support
    schunk_description
    xacro
  ];

  colconTestDepends = [
  ];
}
