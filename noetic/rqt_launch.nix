{
  catkin,
  python_qt_binding,
  roslaunch,
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
  name = "rqt_launch";
  pkgFinal = final.noetic.rqt_launch;
  src = srcs.rqt_launch.rqt_launch;

  colconBuildDepends = [
    catkin
    rqt_py_common
  ];

  colconRunDepends = [
    python_qt_binding
    roslaunch
    rospy
    rqt_console
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
