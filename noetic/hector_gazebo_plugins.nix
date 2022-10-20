{
  catkin,
  dynamic_reconfigure,
  gazebo,
  gazebo_dev,
  gazebo_ros,
  geographic_msgs,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  roscpp,
  std_msgs,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_gazebo_plugins";
  pkgFinal = final.noetic.hector_gazebo_plugins;
  src = srcs.hector_gazebo.hector_gazebo_plugins;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    gazebo_dev
    geographic_msgs
    geometry_msgs
    message_generation
    nav_msgs
    roscpp
    std_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    dynamic_reconfigure
    gazebo
    gazebo_ros
    geographic_msgs
    geometry_msgs
    message_runtime
    nav_msgs
    roscpp
    std_msgs
    std_srvs
    tf
  ];

  colconTestDepends = [
  ];
}
