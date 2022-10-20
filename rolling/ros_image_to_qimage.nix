{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_common,
  cv_bridge,
  python_qt_binding,
  qt5,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_image_to_qimage";
  pkgFinal = final.rolling.ros_image_to_qimage;
  src = srcs.ros_image_to_qimage.ros_image_to_qimage;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_pytest
    ament_cmake_python
    cv_bridge
    python_qt_binding
    qt5.qtbase
    sensor_msgs
  ];

  colconRunDepends = [
    cv_bridge
    python_qt_binding
    qt5.qtbase
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
