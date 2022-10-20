{
  catkin,
  python3Packages,
  python_qt_binding,
  roslib,
  rospy,
  rqt_gui,
  rqt_gui_py,
  rqt_logger_level,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_console";
  pkgFinal = final.noetic.rqt_console;
  src = srcs.rqt_console.rqt_console;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    roslib
    rospy
    rqt_gui
    rqt_gui_py
    rqt_logger_level
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
