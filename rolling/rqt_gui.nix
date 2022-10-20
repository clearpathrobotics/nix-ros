{
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  python3Packages,
  python_qt_binding,
  qt_gui,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_gui";
  pkgFinal = final.rolling.rqt_gui;
  src = srcs.rqt.rqt_gui;

  colconBuildDepends = [
    qt_gui
  ];

  colconRunDepends = [
    ament_index_python
    python3Packages.catkin-pkg
    python_qt_binding
    qt_gui
    rclpy
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
