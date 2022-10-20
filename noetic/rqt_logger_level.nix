{
  catkin,
  python3Packages,
  python_qt_binding,
  rosnode,
  rospy,
  rosservice,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_logger_level";
  pkgFinal = final.noetic.rqt_logger_level;
  src = srcs.rqt_logger_level.rqt_logger_level;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    rosnode
    rospy
    rosservice
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
