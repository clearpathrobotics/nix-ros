{
  ament_index_python,
  python3Packages,
  python_qt_binding,
  qt_gui_py_common,
  rclpy,
  rosidl_runtime_py,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_publisher";
  pkgFinal = final.rolling.rqt_publisher;
  src = srcs.rqt_publisher.rqt_publisher;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_index_python
    python3Packages.numpy
    python_qt_binding
    qt_gui_py_common
    rclpy
    rosidl_runtime_py
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
