{
  camera_info_manager,
  catkin,
  controller_interface,
  controller_manager,
  cv_bridge,
  image_transport,
  pluginlib,
  roscpp,
  sensor_msgs,
  usb_cam_hardware_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "usb_cam_controllers";
  pkgFinal = final.noetic.usb_cam_controllers;
  src = srcs.usb_cam_hardware.usb_cam_controllers;

  colconBuildDepends = [
    camera_info_manager
    catkin
    controller_interface
    controller_manager
    cv_bridge
    image_transport
    pluginlib
    roscpp
    sensor_msgs
    usb_cam_hardware_interface
  ];

  colconRunDepends = [
    camera_info_manager
    controller_interface
    controller_manager
    cv_bridge
    image_transport
    pluginlib
    roscpp
    sensor_msgs
    usb_cam_hardware_interface
  ];

  colconTestDepends = [
  ];
}
