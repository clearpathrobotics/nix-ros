{
  boost,
  cmake,
  collada-dom,
  doxygen,
  eigen,
  jython,
  libf2c,
  libjpeg,
  libpng12,
  libxml2,
  openrtm_aist,
  pkg-config,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "openhrp3";
  pkgFinal = final.noetic.openhrp3;
  src = srcs.openhrp3.openhrp3;

  colconBuildDepends = [
    boost
    cmake
    collada-dom
    doxygen
    eigen
    jython
    libf2c
    libjpeg
    libpng12
    libxml2
    openrtm_aist
    pkg-config
  ];

  colconRunDepends = [
    boost
    collada-dom
    eigen
    jython
    libf2c
    libjpeg
    libpng12
    libxml2
    openrtm_aist
  ];

  colconTestDepends = [
  ];
}
