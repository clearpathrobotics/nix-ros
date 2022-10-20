{
  catkin,
  hardware_interface,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "usb_cam_hardware_interface";
  pkgFinal = final.noetic.usb_cam_hardware_interface;
  src = srcs.usb_cam_hardware.usb_cam_hardware_interface;

  colconBuildDepends = [
    catkin
    hardware_interface
    roscpp
  ];

  colconRunDepends = [
    hardware_interface
    roscpp
  ];

  colconTestDepends = [
  ];
}
