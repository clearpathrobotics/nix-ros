{
  ament_cmake,
  ament_cmake_pytest,
  python_cmake_module,
  python_qt_binding,
  qt5,
  qt_gui,
  rclpy,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_py_common";
  pkgFinal = final.rolling.rqt_py_common;
  src = srcs.rqt.rqt_py_common;

  colconBuildDepends = [
    ament_cmake
    qt5.qtbase
    rclpy
  ];

  colconRunDepends = [
    python_qt_binding
    qt5.qtbase
    qt_gui
    rclpy
  ];

  colconTestDepends = [
    ament_cmake_pytest
    python_cmake_module
    rosidl_default_generators
    rosidl_default_runtime
  ];
}
