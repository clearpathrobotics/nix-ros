{
  catkin,
  diagnostic_msgs,
  python3Packages,
  python_qt_binding,
  qt_gui,
  qt_gui_py_common,
  rospy,
  rqt_bag,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_robot_monitor";
  pkgFinal = final.noetic.rqt_robot_monitor;
  src = srcs.rqt_robot_monitor.rqt_robot_monitor;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    diagnostic_msgs
    python3Packages.rospkg
    python_qt_binding
    qt_gui
    qt_gui_py_common
    rospy
    rqt_bag
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
