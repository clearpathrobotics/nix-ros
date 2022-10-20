{
  catkin,
  filters,
  laser_geometry,
  message_filters,
  message_generation,
  message_runtime,
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
  name = "laser_assembler";
  pkgFinal = final.noetic.laser_assembler;
  src = srcs.laser_assembler.laser_assembler;

  colconBuildDepends = [
    catkin
    filters
    laser_geometry
    message_filters
    message_generation
    pluginlib
    roscpp
    rostest
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    filters
    laser_geometry
    message_filters
    message_runtime
    pluginlib
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
