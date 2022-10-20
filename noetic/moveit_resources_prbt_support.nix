{
  catkin,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_prbt_support";
  pkgFinal = final.noetic.moveit_resources_prbt_support;
  src = srcs.moveit_resources.moveit_resources_prbt_support;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
  ];
}
