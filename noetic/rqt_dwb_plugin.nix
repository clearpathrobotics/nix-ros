{
  catkin,
  dwb_msgs,
  geometry_msgs,
  nav_2d_utils,
  python_qt_binding,
  roslint,
  rospy,
  rqt_bag,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_dwb_plugin";
  pkgFinal = final.noetic.rqt_dwb_plugin;
  src = srcs.robot_navigation.rqt_dwb_plugin;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dwb_msgs
    geometry_msgs
    nav_2d_utils
    python_qt_binding
    rospy
    rqt_bag
  ];

  colconTestDepends = [
    roslint
  ];
}
