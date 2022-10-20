{
  catkin,
  image_transport,
  roscpp,
  rostest,
  rosunit,
  sensor_msgs,
  std_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fkie_message_filters";
  pkgFinal = final.noetic.fkie_message_filters;
  src = srcs.fkie_message_filters.fkie_message_filters;

  colconBuildDepends = [
    catkin
    image_transport
    roscpp
    sensor_msgs
    tf2_ros
  ];

  colconRunDepends = [
    image_transport
    roscpp
    sensor_msgs
    tf2_ros
  ];

  colconTestDepends = [
    rostest
    rosunit
    std_msgs
  ];
}
