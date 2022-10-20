{
  catkin,
  geometry_msgs,
  jsk_footstep_msgs,
  message_generation,
  pcl_msgs,
  rostest,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_recognition_msgs";
  pkgFinal = final.noetic.jsk_recognition_msgs;
  src = srcs.jsk_recognition.jsk_recognition_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    jsk_footstep_msgs
    message_generation
    pcl_msgs
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    jsk_footstep_msgs
    message_generation
    pcl_msgs
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
