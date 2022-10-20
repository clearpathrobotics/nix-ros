{
  catkin,
  message_filters,
  nodelet,
  pluginlib,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_cam3d_throttle";
  pkgFinal = final.noetic.cob_cam3d_throttle;
  src = srcs.cob_perception_common.cob_cam3d_throttle;

  colconBuildDepends = [
    catkin
    message_filters
    nodelet
    pluginlib
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    message_filters
    nodelet
    pluginlib
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
