{
  automake,
  catkin,
  cmake,
  doxygen,
  libtool,
  omniorb,
  pkg-config,
  python,
  util-linux,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "openrtm_aist";
  pkgFinal = final.noetic.openrtm_aist;
  src = srcs.openrtm_aist.openrtm_aist;

  colconBuildDepends = [
    automake
    cmake
    doxygen
    libtool
    omniorb
    pkg-config
    python
    util-linux
  ];

  colconRunDepends = [
    catkin
    omniorb
    util-linux
  ];

  colconTestDepends = [
  ];
}
