{
  catkin,
  cv_bridge,
  image_geometry,
  message_filters,
  rospy,
  rostest,
  sensor_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "camera_calibration";
  pkgFinal = final.noetic.camera_calibration;
  src = srcs.image_pipeline.camera_calibration;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cv_bridge
    image_geometry
    message_filters
    rospy
    sensor_msgs
    std_srvs
  ];

  colconTestDepends = [
    rostest
  ];
}
