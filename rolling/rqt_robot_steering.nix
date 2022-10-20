{
  ament_index_python,
  geometry_msgs,
  python_qt_binding,
  rclpy,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_robot_steering";
  pkgFinal = final.rolling.rqt_robot_steering;
  src = srcs.rqt_robot_steering.rqt_robot_steering;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_index_python
    geometry_msgs
    python_qt_binding
    rclpy
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
