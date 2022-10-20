{
  cmake,
  cv_bridge,
  freenect,
  libpointmatcher,
  pcl,
  proj,
  qt_gui_cpp,
  sqlite,
  zlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rtabmap";
  pkgFinal = final.rolling.rtabmap;
  src = srcs.rtabmap.rtabmap;

  colconBuildDepends = [
    cmake
    cv_bridge
    freenect
    libpointmatcher
    pcl
    proj
    qt_gui_cpp
    sqlite
    zlib
  ];

  colconRunDepends = [
    cv_bridge
    freenect
    libpointmatcher
    pcl
    qt_gui_cpp
    sqlite
    zlib
  ];

  colconTestDepends = [
  ];
}
