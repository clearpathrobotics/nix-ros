{
  catkin,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_panda_description";
  pkgFinal = final.noetic.moveit_resources_panda_description;
  src = srcs.moveit_resources.moveit_resources_panda_description;

  colconBuildDepends = [
    catkin
    xacro
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
