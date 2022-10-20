{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_prefix_tools";
  pkgFinal = final.noetic.swri_prefix_tools;
  src = srcs.marti_common.swri_prefix_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.psutil
  ];

  colconTestDepends = [
  ];
}
