{
  catkin,
  cmake,
  fltk,
  gtk2,
  libGL,
  libGLU,
  libjpeg,
  libtool,
  pkg-config,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "stage";
  pkgFinal = final.noetic.stage;
  src = srcs.stage.stage;

  colconBuildDepends = [
    cmake
    fltk
    gtk2
    libGL
    libGLU
    libjpeg
    libtool
    pkg-config
  ];

  colconRunDepends = [
    catkin
    fltk
    gtk2
    libGL
    libGLU
    libjpeg
  ];

  colconTestDepends = [
  ];
}
