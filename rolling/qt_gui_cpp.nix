{
  ament_cmake,
  ament_cmake_pytest,
  pkg-config,
  pluginlib,
  python_qt_binding,
  qt5,
  qt_gui,
  rcpputils,
  tinyxml2_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qt_gui_cpp";
  pkgFinal = final.rolling.qt_gui_cpp;
  src = srcs.qt_gui_core.qt_gui_cpp;

  colconBuildDepends = [
    ament_cmake
    pkg-config
    pluginlib
    python_qt_binding
    qt5.qtbase
    rcpputils
    tinyxml2_vendor
  ];

  colconRunDepends = [
    pluginlib
    qt_gui
    rcpputils
    tinyxml2_vendor
  ];

  colconTestDepends = [
    ament_cmake_pytest
  ];
}
