{
  catkin,
  cmake_modules,
  pkg-config,
  pluginlib,
  python3Packages,
  python_qt_binding,
  qt5,
  qt_gui,
  tinyxml,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qt_gui_cpp";
  pkgFinal = final.noetic.qt_gui_cpp;
  src = srcs.qt_gui_core.qt_gui_cpp;

  colconBuildDepends = [
    catkin
    cmake_modules
    pkg-config
    pluginlib
    python3Packages.setuptools
    python_qt_binding
    qt5.qtbase
    tinyxml
  ];

  colconRunDepends = [
    pluginlib
    qt_gui
    tinyxml
  ];

  colconTestDepends = [
  ];
}
