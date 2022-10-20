{
  catkin,
  python3Packages,
  python_qt_binding,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qt_gui_py_common";
  pkgFinal = final.noetic.qt_gui_py_common;
  src = srcs.qt_gui_core.qt_gui_py_common;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
  ];

  colconTestDepends = [
  ];
}
