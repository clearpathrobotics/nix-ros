{
  catkin,
  controller_manager,
  hardware_interface,
  nodelet,
  pluginlib,
  roscpp,
  usb_cam_hardware_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "usb_cam_hardware";
  pkgFinal = final.noetic.usb_cam_hardware;
  src = srcs.usb_cam_hardware.usb_cam_hardware;

  colconBuildDepends = [
    catkin
    controller_manager
    hardware_interface
    nodelet
    pluginlib
    roscpp
    usb_cam_hardware_interface
  ];

  colconRunDepends = [
    controller_manager
    hardware_interface
    nodelet
    pluginlib
    roscpp
    usb_cam_hardware_interface
  ];

  colconTestDepends = [
  ];
}
