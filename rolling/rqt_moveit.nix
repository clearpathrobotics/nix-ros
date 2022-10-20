{
  python3Packages,
  python_qt_binding,
  rclpy,
  rosidl_default_generators,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,
  rqt_topic,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_moveit";
  pkgFinal = final.rolling.rqt_moveit;
  src = srcs.rqt_moveit.rqt_moveit;

  colconBuildDepends = [
    python3Packages.setuptools
    rosidl_default_generators
  ];

  colconRunDepends = [
    python_qt_binding
    rclpy
    rqt_gui
    rqt_gui_py
    rqt_py_common
    rqt_topic
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
