{
  catkin,
  dynamic_reconfigure,
  geodesy,
  geographic_msgs,
  geometry_msgs,
  nav_msgs,
  roslaunch,
  rospy,
  rostest,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "route_network";
  pkgFinal = final.noetic.route_network;
  src = srcs.open_street_map.route_network;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geodesy
    geographic_msgs
    geometry_msgs
    nav_msgs
    rospy
    rostest
    visualization_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geodesy
    geographic_msgs
    geometry_msgs
    nav_msgs
    rospy
    visualization_msgs
  ];

  colconTestDepends = [
    roslaunch
  ];
}
