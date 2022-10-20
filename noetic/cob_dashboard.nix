{
  catkin,
  cob_msgs,
  python3Packages,
  roslib,
  rospy,
  rqt_gui,
  rqt_robot_dashboard,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_dashboard";
  pkgFinal = final.noetic.cob_dashboard;
  src = srcs.cob_command_tools.cob_dashboard;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    cob_msgs
    roslib
    rospy
    rqt_gui
    rqt_robot_dashboard
  ];

  colconTestDepends = [
  ];
}
