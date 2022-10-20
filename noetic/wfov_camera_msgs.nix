{
  catkin,
  message_generation,
  message_runtime,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "wfov_camera_msgs";
  pkgFinal = final.noetic.wfov_camera_msgs;
  src = srcs.pointgrey_camera_driver.wfov_camera_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    sensor_msgs
  ];

  colconRunDepends = [
    message_runtime
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
