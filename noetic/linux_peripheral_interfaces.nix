{
  catkin,
  laptop_battery_monitor,
  libsensors_monitor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "linux_peripheral_interfaces";
  pkgFinal = final.noetic.linux_peripheral_interfaces;
  src = srcs.linux_peripheral_interfaces.linux_peripheral_interfaces;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    laptop_battery_monitor
    libsensors_monitor
  ];

  colconTestDepends = [
  ];
}
