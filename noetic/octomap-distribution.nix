{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap-distribution";
  pkgFinal = final.noetic.octomap-distribution;
  src = srcs.octomap.octomap-distribution;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
