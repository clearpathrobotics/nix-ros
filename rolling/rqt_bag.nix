{
  python_qt_binding,
  rclpy,
  rosbag2_py,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_bag";
  pkgFinal = final.rolling.rqt_bag;
  src = srcs.rqt_bag.rqt_bag;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python_qt_binding
    rclpy
    rosbag2_py
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
