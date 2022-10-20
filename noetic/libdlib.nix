{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libdlib";
  pkgFinal = final.noetic.libdlib;
  src = srcs.cob_extern.libdlib;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
