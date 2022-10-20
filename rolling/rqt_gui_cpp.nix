{
  ament_cmake,
  pluginlib,
  qt5,
  qt_gui,
  qt_gui_cpp,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_gui_cpp";
  pkgFinal = final.rolling.rqt_gui_cpp;
  src = srcs.rqt.rqt_gui_cpp;

  colconBuildDepends = [
    ament_cmake
    pluginlib
    qt5.qtbase
    qt_gui
    qt_gui_cpp
    rclcpp
  ];

  colconRunDepends = [
    pluginlib
    qt_gui
    qt_gui_cpp
    rclcpp
  ];

  colconTestDepends = [
  ];
}
