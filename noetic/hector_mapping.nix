{
  boost,
  catkin,
  eigen,
  laser_geometry,
  message_filters,
  message_generation,
  message_runtime,
  nav_msgs,
  roscpp,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_mapping";
  pkgFinal = final.noetic.hector_mapping;
  src = srcs.hector_slam.hector_mapping;

  colconBuildDepends = [
    boost
    catkin
    eigen
    laser_geometry
    message_filters
    message_generation
    nav_msgs
    roscpp
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    boost
    eigen
    laser_geometry
    message_filters
    message_runtime
    nav_msgs
    roscpp
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
