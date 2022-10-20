{
  catkin,
  control_toolbox,
  hardware_interface,
  qb_device_hardware_interface,
  roscpp,
  transmission_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_hand_hardware_interface";
  pkgFinal = final.noetic.qb_hand_hardware_interface;
  src = srcs.qb_hand.qb_hand_hardware_interface;

  colconBuildDepends = [
    catkin
    control_toolbox
    hardware_interface
    qb_device_hardware_interface
    roscpp
    transmission_interface
  ];

  colconRunDepends = [
    control_toolbox
    hardware_interface
    qb_device_hardware_interface
    roscpp
    transmission_interface
  ];

  colconTestDepends = [
  ];
}
