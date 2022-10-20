{
  boost,
  cmake,
  eigen,
  flann,
  freeglut,
  gdal,
  gsl,
  hdf5,
  libyamlcpp,
  lz4,
  opencv,
  qt5,
  vtk,
  vtkWithQt5,
  xorg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lvr2";
  pkgFinal = final.noetic.lvr2;
  src = srcs.lvr2.lvr2;

  colconBuildDepends = [
    boost
    cmake
    eigen
    flann
    freeglut
    gdal
    gsl
    hdf5
    libyamlcpp
    lz4
    opencv
    qt5.qtbase
    vtk
    vtkWithQt5
    xorg.libXi
    xorg.libXmu
  ];

  colconRunDepends = [
    boost
    eigen
    flann
    freeglut
    gdal
    gsl
    hdf5
    libyamlcpp
    lz4
    opencv
    qt5.qtbase
    vtk
    vtkWithQt5
    xorg.libXi
    xorg.libXmu
  ];

  colconTestDepends = [
  ];
}
