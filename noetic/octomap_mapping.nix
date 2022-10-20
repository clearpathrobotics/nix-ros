{
  catkin,
  octomap_server,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap_mapping";
  pkgFinal = final.noetic.octomap_mapping;
  src = srcs.octomap_mapping.octomap_mapping;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    octomap_server
  ];

  colconTestDepends = [
  ];
}
