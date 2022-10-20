{
  catkin,
  qt_gui,
  rospy,
  rqt_gui,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_gui_py";
  pkgFinal = final.noetic.rqt_gui_py;
  src = srcs.rqt.rqt_gui_py;

  colconBuildDepends = [
    catkin
    qt_gui
    rospy
    rqt_gui
  ];

  colconRunDepends = [
    qt_gui
    rospy
    rqt_gui
  ];

  colconTestDepends = [
  ];
}
