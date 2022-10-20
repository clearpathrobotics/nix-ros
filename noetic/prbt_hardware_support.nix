{
  canopen_chain_node,
  catkin,
  cmake_modules,
  code_coverage,
  dynamic_reconfigure,
  libmodbus,
  message_filters,
  message_generation,
  message_runtime,
  pilz_msgs,
  pilz_testutils,
  pilz_utils,
  roscpp,
  rosservice,
  rostest,
  rosunit,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "prbt_hardware_support";
  pkgFinal = final.noetic.prbt_hardware_support;
  src = srcs.pilz_robots.prbt_hardware_support;

  colconBuildDepends = [
    canopen_chain_node
    catkin
    dynamic_reconfigure
    libmodbus
    message_filters
    message_generation
    pilz_msgs
    pilz_utils
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
    urdf
  ];

  colconRunDepends = [
    message_runtime
    pilz_msgs
    roscpp
    rosservice
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
    cmake_modules
    code_coverage
    pilz_testutils
    rostest
    rosunit
  ];
}
