{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_fanuc_description";
  pkgFinal = final.noetic.moveit_resources_fanuc_description;
  src = srcs.moveit_resources.moveit_resources_fanuc_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
