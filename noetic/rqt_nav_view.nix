{
  catkin,
  geometry_msgs,
  nav_msgs,
  python_qt_binding,
  qt_gui,
  rospy,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_nav_view";
  pkgFinal = final.noetic.rqt_nav_view;
  src = srcs.rqt_nav_view.rqt_nav_view;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    python_qt_binding
    qt_gui
    rospy
    rqt_gui
    rqt_gui_py
    rqt_py_common
    tf
  ];

  colconTestDepends = [
  ];
}
