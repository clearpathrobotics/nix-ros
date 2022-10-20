{
  catkin,
  diagnostic_msgs,
  python3Packages,
  python_qt_binding,
  qt_gui,
  rospy,
  rqt_console,
  rqt_gui,
  rqt_gui_py,
  rqt_nav_view,
  rqt_robot_monitor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_robot_dashboard";
  pkgFinal = final.noetic.rqt_robot_dashboard;
  src = srcs.rqt_robot_dashboard.rqt_robot_dashboard;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    diagnostic_msgs
    python_qt_binding
    qt_gui
    rospy
    rqt_console
    rqt_gui
    rqt_gui_py
    rqt_nav_view
    rqt_robot_monitor
  ];

  colconTestDepends = [
  ];
}
