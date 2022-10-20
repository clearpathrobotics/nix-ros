{
  catkin,
  python3Packages,
  python_qt_binding,
  roslib,
  rosmsg,
  rospy,
  rqt_console,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_msg";
  pkgFinal = final.noetic.rqt_msg;
  src = srcs.rqt_msg.rqt_msg;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    roslib
    rosmsg
    rospy
    rqt_console
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
