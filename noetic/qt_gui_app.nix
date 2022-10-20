{
  catkin,
  python3Packages,
  qt_gui,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qt_gui_app";
  pkgFinal = final.noetic.qt_gui_app;
  src = srcs.qt_gui_core.qt_gui_app;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    qt_gui
  ];

  colconTestDepends = [
  ];
}
