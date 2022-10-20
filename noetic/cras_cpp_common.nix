{
  bondcpp,
  boost,
  catkin,
  class_loader,
  diagnostic_msgs,
  diagnostic_updater,
  dynamic_reconfigure,
  eigen,
  filters,
  geometry_msgs,
  nodelet,
  pluginlib,
  rosconsole,
  roscpp,
  roslaunch,
  roslint,
  rostest,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_ros,
  tf2_sensor_msgs,
  topic_tools,
  urdfdom-headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cras_cpp_common";
  pkgFinal = final.noetic.cras_cpp_common;
  src = srcs.cras_ros_utils.cras_cpp_common;

  colconBuildDepends = [
    bondcpp
    boost
    catkin
    class_loader
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    eigen
    filters
    geometry_msgs
    nodelet
    pluginlib
    rosconsole
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    tf2_sensor_msgs
    topic_tools
    urdfdom-headers
  ];

  colconRunDepends = [
    bondcpp
    boost
    class_loader
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    eigen
    filters
    geometry_msgs
    nodelet
    pluginlib
    rosconsole
    roscpp
    sensor_msgs
    tf2
    tf2_ros
    topic_tools
    urdfdom-headers
  ];

  colconTestDepends = [
    roslaunch
    roslint
    rostest
  ];
}
