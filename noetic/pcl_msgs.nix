{
  catkin,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pcl_msgs";
  pkgFinal = final.noetic.pcl_msgs;
  src = srcs.pcl_msgs.pcl_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
