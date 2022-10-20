{
  actionlib_msgs,
  catkin,
  genmsg,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  sensor_msgs,
  std_msgs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "naoqi_bridge_msgs";
  pkgFinal = final.noetic.naoqi_bridge_msgs;
  src = srcs.naoqi_bridge_msgs.naoqi_bridge_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    genmsg
    geometry_msgs
    message_generation
    nav_msgs
    sensor_msgs
    std_msgs
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    genmsg
    geometry_msgs
    message_runtime
    nav_msgs
    sensor_msgs
    std_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
