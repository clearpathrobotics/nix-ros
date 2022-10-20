{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,
  stereo_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ensenso_camera_msgs";
  pkgFinal = final.noetic.ensenso_camera_msgs;
  src = srcs.ensenso_driver.ensenso_camera_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    sensor_msgs
    std_msgs
    stereo_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
    sensor_msgs
    std_msgs
    stereo_msgs
  ];

  colconTestDepends = [
  ];
}
