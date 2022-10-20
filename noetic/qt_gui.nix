{
  catkin,
  python3Packages,
  python_qt_binding,
  qt5,
  tango-icon-theme,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qt_gui";
  pkgFinal = final.noetic.qt_gui;
  src = srcs.qt_gui_core.qt_gui;

  colconBuildDepends = [
    catkin
    python3Packages.pyqt5
    python3Packages.setuptools
    python3Packages.sip_4
    qt5.qtbase
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    tango-icon-theme
  ];

  colconTestDepends = [
  ];
}
