{
  catkin,
  subversion,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qpoases_vendor";
  pkgFinal = final.noetic.qpoases_vendor;
  src = srcs.qpoases_vendor.qpoases_vendor;

  colconBuildDepends = [
    catkin
    subversion
  ];

  colconRunDepends = [
    subversion
  ];

  colconTestDepends = [
  ];
}
