{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libpcan";
  pkgFinal = final.noetic.libpcan;
  src = srcs.cob_extern.libpcan;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
