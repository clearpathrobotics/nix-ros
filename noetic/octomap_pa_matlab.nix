{
  catkin,
  octomap_pa_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap_pa_matlab";
  pkgFinal = final.noetic.octomap_pa_matlab;
  src = srcs.octomap_pa.octomap_pa_matlab;

  colconBuildDepends = [
    catkin
    octomap_pa_msgs
  ];

  colconRunDepends = [
    octomap_pa_msgs
  ];

  colconTestDepends = [
  ];
}
