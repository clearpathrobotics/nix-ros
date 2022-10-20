{
  catkin,
  python3Packages,
  python_qt_binding,
  qt_gui,
  rospy,
  rqt_gui,
  rqt_gui_py,
  webkit_dependency,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_web";
  pkgFinal = final.noetic.rqt_web;
  src = srcs.rqt_web.rqt_web;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    qt_gui
    rospy
    rqt_gui
    rqt_gui_py
    webkit_dependency
  ];

  colconTestDepends = [
  ];
}
