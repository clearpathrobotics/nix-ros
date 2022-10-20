{
  catkin,
  gazebo,
  gazebo_11,
  gazebo_ros,
  geometry_msgs,
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
  name = "ridgeback_gazebo_plugins";
  pkgFinal = final.noetic.ridgeback_gazebo_plugins;
  src = srcs.ridgeback_simulator.ridgeback_gazebo_plugins;

  colconBuildDepends = [
    catkin
    gazebo_11
    geometry_msgs
    nav_msgs
    roscpp
    std_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    gazebo
    gazebo_ros
    geometry_msgs
    message_runtime
    nav_msgs
    roscpp
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
