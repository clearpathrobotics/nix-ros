{
  catkin,
  python3Packages,
  python_qt_binding,
  rospy,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_top";
  pkgFinal = final.noetic.rqt_top;
  src = srcs.rqt_top.rqt_top;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.psutil
    python_qt_binding
    rospy
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
