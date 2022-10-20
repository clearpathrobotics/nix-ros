{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap-distribution";
  pkgFinal = final.rolling.octomap-distribution;
  src = srcs.octomap.octomap-distribution;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
