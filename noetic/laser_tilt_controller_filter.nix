{
  catkin,
  filters,
  pluginlib,
  pr2_msgs,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_tilt_controller_filter";
  pkgFinal = final.noetic.laser_tilt_controller_filter;
  src = srcs.pr2_navigation.laser_tilt_controller_filter;

  colconBuildDepends = [
    catkin
    filters
    pluginlib
    pr2_msgs
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    filters
    pluginlib
    pr2_msgs
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
