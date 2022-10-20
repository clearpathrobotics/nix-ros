{
  cmake,
  eigen,
  libccd,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fcl";
  pkgFinal = final.noetic.fcl;
  src = srcs.fcl.fcl;

  colconBuildDepends = [
    cmake
    eigen
    libccd
  ];

  colconRunDepends = [
    eigen
    libccd
  ];

  colconTestDepends = [
  ];
}
