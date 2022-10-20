{
  catkin,
  image_transport,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "polled_camera";
  pkgFinal = final.noetic.polled_camera;
  src = srcs.image_common.polled_camera;

  colconBuildDepends = [
    catkin
    image_transport
    message_generation
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    image_transport
    message_runtime
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
