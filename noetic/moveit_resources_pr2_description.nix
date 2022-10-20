{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_pr2_description";
  pkgFinal = final.noetic.moveit_resources_pr2_description;
  src = srcs.moveit_resources.moveit_resources_pr2_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
