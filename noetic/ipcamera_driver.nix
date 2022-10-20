{
  camera_info_manager,
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  image_transport,
  roscpp,
  sensor_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ipcamera_driver";
  pkgFinal = final.noetic.ipcamera_driver;
  src = srcs.ipcamera_driver.ipcamera_driver;

  colconBuildDepends = [
    camera_info_manager
    catkin
    cv_bridge
    dynamic_reconfigure
    image_transport
    roscpp
    sensor_msgs
    std_srvs
  ];

  colconRunDepends = [
    camera_info_manager
    cv_bridge
    dynamic_reconfigure
    image_transport
    roscpp
    sensor_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
