{
  catkin,
  cmake_modules,
  cppzmq,
  eigen_conversions,
  geometry_msgs,
  kdl_parser,
  moveit_core,
  moveit_msgs,
  moveit_ros_planning,
  msgpack,
  orocos-kdl,
  pluginlib,
  roscpp,
  rosunit,
  std_msgs,
  tf,
  tf_conversions,
  tinyxml-2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_core";
  pkgFinal = final.noetic.exotica_core;
  src = srcs.exotica.exotica_core;

  colconBuildDepends = [
    catkin
    cmake_modules
    cppzmq
    eigen_conversions
    geometry_msgs
    kdl_parser
    moveit_core
    moveit_msgs
    moveit_ros_planning
    msgpack
    pluginlib
    roscpp
    std_msgs
    tf
    tf_conversions
    tinyxml-2
  ];

  colconRunDepends = [
    cppzmq
    eigen_conversions
    geometry_msgs
    kdl_parser
    moveit_core
    moveit_msgs
    moveit_ros_planning
    msgpack
    orocos-kdl
    pluginlib
    roscpp
    std_msgs
    tf
    tf_conversions
    tinyxml-2
  ];

  colconTestDepends = [
    rosunit
  ];
}
