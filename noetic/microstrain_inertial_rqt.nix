{
  catkin,
  geometry_msgs,
  microstrain_inertial_msgs,
  nav_msgs,
  rospy,
  rqt_gui,
  rqt_gui_py,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "microstrain_inertial_rqt";
  pkgFinal = final.noetic.microstrain_inertial_rqt;
  src = srcs.microstrain_inertial.microstrain_inertial_rqt;

  colconBuildDepends = [
    catkin
    geometry_msgs
    microstrain_inertial_msgs
    nav_msgs
    rospy
    rqt_gui
    rqt_gui_py
    std_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    microstrain_inertial_msgs
    nav_msgs
    rospy
    rqt_gui
    rqt_gui_py
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
