{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "darknet_ros_msgs";
  pkgFinal = final.noetic.darknet_ros_msgs;
  src = srcs.darknet_ros.darknet_ros_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
