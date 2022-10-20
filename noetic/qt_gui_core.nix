{
  catkin,
  qt_dotgraph,
  qt_gui,
  qt_gui_app,
  qt_gui_cpp,
  qt_gui_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qt_gui_core";
  pkgFinal = final.noetic.qt_gui_core;
  src = srcs.qt_gui_core.qt_gui_core;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    qt_dotgraph
    qt_gui
    qt_gui_app
    qt_gui_cpp
    qt_gui_py_common
  ];

  colconTestDepends = [
  ];
}
