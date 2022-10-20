{
  catkin,
  geometry_msgs,
  libdmtx,
  message_filters,
  resource_retriever,
  roscpp,
  sensor_msgs,
  std_msgs,
  usb_cam,
  visp_bridge,
  visp_tracker,
  zbar,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "visp_auto_tracker";
  pkgFinal = final.noetic.visp_auto_tracker;
  src = srcs.vision_visp.visp_auto_tracker;

  colconBuildDepends = [
    catkin
    geometry_msgs
    libdmtx
    message_filters
    resource_retriever
    roscpp
    sensor_msgs
    std_msgs
    visp_bridge
    visp_tracker
    zbar
  ];

  colconRunDepends = [
    geometry_msgs
    libdmtx
    message_filters
    resource_retriever
    roscpp
    sensor_msgs
    std_msgs
    usb_cam
    visp_bridge
    visp_tracker
    zbar
  ];

  colconTestDepends = [
  ];
}
