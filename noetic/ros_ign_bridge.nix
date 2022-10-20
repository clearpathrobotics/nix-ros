{
  catkin,
  geometry_msgs,
  ignition,
  message_generation,
  message_runtime,
  nav_msgs,
  rosconsole,
  roscpp,
  rosgraph_msgs,
  rostest,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_ign_bridge";
  pkgFinal = final.noetic.ros_ign_bridge;
  src = srcs.ros_ign.ros_ign_bridge;

  colconBuildDepends = [
    catkin
    geometry_msgs
    ignition.msgs5
    ignition.transport8
    message_generation
    nav_msgs
    rosconsole
    roscpp
    rosgraph_msgs
    sensor_msgs
    std_msgs
    std_srvs
    tf2_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    ignition.msgs5
    ignition.transport8
    message_runtime
    nav_msgs
    rosconsole
    roscpp
    rosgraph_msgs
    sensor_msgs
    std_msgs
    std_srvs
    tf2_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
