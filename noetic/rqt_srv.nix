{
  catkin,
  rosmsg,
  rospy,
  rqt_gui,
  rqt_gui_py,
  rqt_msg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_srv";
  pkgFinal = final.noetic.rqt_srv;
  src = srcs.rqt_srv.rqt_srv;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rosmsg
    rospy
    rqt_gui
    rqt_gui_py
    rqt_msg
  ];

  colconTestDepends = [
  ];
}
