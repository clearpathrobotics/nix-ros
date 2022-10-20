{
  catkin,
  libdlib,
  libntcan,
  libpcan,
  libphidgets,
  opengm,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_extern";
  pkgFinal = final.noetic.cob_extern;
  src = srcs.cob_extern.cob_extern;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    libdlib
    libntcan
    libpcan
    libphidgets
    opengm
  ];

  colconTestDepends = [
  ];
}
