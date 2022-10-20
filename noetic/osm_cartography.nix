{
  catkin,
  dynamic_reconfigure,
  geodesy,
  geographic_msgs,
  geometry_msgs,
  roslaunch,
  rospy,
  route_network,
  std_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "osm_cartography";
  pkgFinal = final.noetic.osm_cartography;
  src = srcs.open_street_map.osm_cartography;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geodesy
    geographic_msgs
    geometry_msgs
    rospy
    std_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geodesy
    geographic_msgs
    geometry_msgs
    rospy
    route_network
    std_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
    roslaunch
  ];
}
