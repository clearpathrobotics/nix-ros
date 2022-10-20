{
  catkin,
  pilz_msgs,
  python3Packages,
  rospy,
  rostest,
  rosunit,
  rqt_gui,
  rqt_gui_py,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_status_indicator_rqt";
  pkgFinal = final.noetic.pilz_status_indicator_rqt;
  src = srcs.pilz_robots.pilz_status_indicator_rqt;

  colconBuildDepends = [
    catkin
    rospy
    rqt_gui
    rqt_gui_py
  ];

  colconRunDepends = [
    pilz_msgs
    rospy
    rqt_gui
    rqt_gui_py
    std_msgs
  ];

  colconTestDepends = [
    python3Packages.mock
    rostest
    rosunit
  ];
}
