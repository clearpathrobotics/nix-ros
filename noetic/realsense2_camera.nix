{
  catkin,
  cv_bridge,
  ddynamic_reconfigure,
  diagnostic_updater,
  eigen,
  genmsg,
  image_transport,
  librealsense2,
  message_generation,
  message_runtime,
  nav_msgs,
  nodelet,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "realsense2_camera";
  pkgFinal = final.noetic.realsense2_camera;
  src = srcs.realsense2_camera.realsense2_camera;

  colconBuildDepends = [
    catkin
    cv_bridge
    ddynamic_reconfigure
    diagnostic_updater
    eigen
    genmsg
    image_transport
    librealsense2
    message_generation
    message_runtime
    nav_msgs
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    cv_bridge
    ddynamic_reconfigure
    diagnostic_updater
    eigen
    genmsg
    image_transport
    librealsense2
    message_runtime
    nav_msgs
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconTestDepends = [
  ];
}
