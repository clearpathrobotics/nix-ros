{
  catkin,
  geometry_msgs,
  libyamlcpp,
  message_generation,
  message_runtime,
  roscpp,
  roslib,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_ros,
  uavcan_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "innopolis_vtol_dynamics";
  pkgFinal = final.noetic.innopolis_vtol_dynamics;
  src = srcs.inno_vtol_dynamics.innopolis_vtol_dynamics;

  colconBuildDepends = [
    catkin
    geometry_msgs
    libyamlcpp
    message_generation
    roscpp
    roslib
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
    uavcan_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    libyamlcpp
    message_runtime
    roscpp
    roslib
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
    uavcan_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
