{
  ament_flake8,
  ament_xmllint,
  python_qt_binding,
  rclpy,
  ros2topic,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_topic";
  pkgFinal = final.rolling.rqt_topic;
  src = srcs.rqt_topic.rqt_topic;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python_qt_binding
    rclpy
    ros2topic
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
    ament_flake8
    ament_xmllint
  ];
}
