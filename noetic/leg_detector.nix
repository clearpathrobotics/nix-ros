{
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  image_geometry,
  laser_filters,
  laser_geometry,
  map_laser,
  message_filters,
  people_msgs,
  people_tracking_filter,
  roscpp,
  roslaunch,
  roslint,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leg_detector";
  pkgFinal = final.noetic.leg_detector;
  src = srcs.people.leg_detector;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geometry_msgs
    image_geometry
    laser_geometry
    message_filters
    people_msgs
    people_tracking_filter
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geometry_msgs
    image_geometry
    laser_filters
    laser_geometry
    map_laser
    message_filters
    people_msgs
    people_tracking_filter
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
    roslaunch
    roslint
  ];
}
