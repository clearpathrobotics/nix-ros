{
  angles,
  catkin,
  geometry_msgs,
  message_filters,
  nav_msgs,
  rosconsole,
  roscpp,
  rospy,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fake_localization";
  pkgFinal = final.noetic.fake_localization;
  src = srcs.navigation.fake_localization;

  colconBuildDepends = [
    angles
    catkin
    geometry_msgs
    message_filters
    nav_msgs
    rosconsole
    roscpp
    rospy
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    message_filters
    nav_msgs
    rosconsole
    roscpp
    rospy
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
