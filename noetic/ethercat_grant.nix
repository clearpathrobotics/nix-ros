{
  catkin,
  libcap,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ethercat_grant";
  pkgFinal = final.noetic.ethercat_grant;
  src = srcs.ethercat_grant.ethercat_grant;

  colconBuildDepends = [
    catkin
    libcap
    roscpp
  ];

  colconRunDepends = [
    libcap
    roscpp
  ];

  colconTestDepends = [
  ];
}
