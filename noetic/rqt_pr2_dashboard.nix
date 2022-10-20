{
  catkin,
  diagnostic_msgs,
  pr2_msgs,
  pr2_power_board,
  roslib,
  rospy,
  rqt_gui,
  rqt_gui_py,
  rqt_robot_dashboard,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_pr2_dashboard";
  pkgFinal = final.noetic.rqt_pr2_dashboard;
  src = srcs.rqt_pr2_dashboard.rqt_pr2_dashboard;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    diagnostic_msgs
    pr2_msgs
    pr2_power_board
    roslib
    rospy
    rqt_gui
    rqt_gui_py
    rqt_robot_dashboard
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
