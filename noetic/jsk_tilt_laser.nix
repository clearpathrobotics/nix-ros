{
  catkin,
  cmake_modules,
  dynamic_reconfigure,
  laser_assembler,
  laser_filters,
  multisense_lib,
  robot_state_publisher,
  sensor_msgs,
  tf,
  tf_conversions,
  urg_node,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_tilt_laser";
  pkgFinal = final.noetic.jsk_tilt_laser;
  src = srcs.jsk_common.jsk_tilt_laser;

  colconBuildDepends = [
    catkin
    cmake_modules
    dynamic_reconfigure
    laser_assembler
    laser_filters
    multisense_lib
    sensor_msgs
    tf
    tf_conversions
  ];

  colconRunDepends = [
    dynamic_reconfigure
    laser_assembler
    laser_filters
    multisense_lib
    robot_state_publisher
    sensor_msgs
    tf
    tf_conversions
    urg_node
  ];

  colconTestDepends = [
  ];
}
