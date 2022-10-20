{
  catkin,
  python3Packages,
  python_qt_binding,
  qt_gui_py_common,
  roslib,
  rosmsg,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_publisher";
  pkgFinal = final.noetic.rqt_publisher;
  src = srcs.rqt_publisher.rqt_publisher;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    qt_gui_py_common
    roslib
    rosmsg
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
