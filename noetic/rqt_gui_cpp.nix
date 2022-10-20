{
  catkin,
  nodelet,
  qt5,
  qt_gui,
  qt_gui_cpp,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_gui_cpp";
  pkgFinal = final.noetic.rqt_gui_cpp;
  src = srcs.rqt.rqt_gui_cpp;

  colconBuildDepends = [
    catkin
    nodelet
    qt5.qtbase
    qt_gui
    qt_gui_cpp
    roscpp
  ];

  colconRunDepends = [
    nodelet
    qt_gui
    qt_gui_cpp
    roscpp
  ];

  colconTestDepends = [
  ];
}
