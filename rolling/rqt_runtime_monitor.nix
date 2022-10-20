{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  diagnostic_msgs,
  python3Packages,
  python_qt_binding,
  qt_gui,
  rclpy,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_runtime_monitor";
  pkgFinal = final.rolling.rqt_runtime_monitor;
  src = srcs.rqt_runtime_monitor.rqt_runtime_monitor;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_index_python
    diagnostic_msgs
    python3Packages.rospkg
    python_qt_binding
    qt_gui
    rclpy
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
