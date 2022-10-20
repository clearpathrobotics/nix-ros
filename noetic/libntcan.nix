{
  catkin,
  dpkg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libntcan";
  pkgFinal = final.noetic.libntcan;
  src = srcs.cob_extern.libntcan;

  colconBuildDepends = [
    catkin
    dpkg
  ];

  colconRunDepends = [
    dpkg
  ];

  colconTestDepends = [
  ];
}
