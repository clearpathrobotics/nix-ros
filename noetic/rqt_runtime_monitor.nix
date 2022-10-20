{
  catkin,
  diagnostic_msgs,
  python3Packages,
  python_qt_binding,
  qt_gui,
  rospy,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_runtime_monitor";
  pkgFinal = final.noetic.rqt_runtime_monitor;
  src = srcs.rqt_runtime_monitor.rqt_runtime_monitor;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    diagnostic_msgs
    python3Packages.rospkg
    python_qt_binding
    qt_gui
    rospy
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
