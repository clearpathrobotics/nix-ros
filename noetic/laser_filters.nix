{
  angles,
  catkin,
  dynamic_reconfigure,
  filters,
  laser_geometry,
  message_filters,
  nodelet,
  pluginlib,
  roscpp,
  rostest,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_filters";
  pkgFinal = final.noetic.laser_filters;
  src = srcs.laser_filters.laser_filters;

  colconBuildDepends = [
    angles
    catkin
    dynamic_reconfigure
    filters
    laser_geometry
    message_filters
    nodelet
    pluginlib
    roscpp
    rostest
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    angles
    dynamic_reconfigure
    filters
    laser_geometry
    message_filters
    nodelet
    pluginlib
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
