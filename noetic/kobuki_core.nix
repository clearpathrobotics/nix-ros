{
  catkin,
  kobuki_dock_drive,
  kobuki_driver,
  kobuki_ftdi,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kobuki_core";
  pkgFinal = final.noetic.kobuki_core;
  src = srcs.kobuki_core.kobuki_core;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    kobuki_dock_drive
    kobuki_driver
    kobuki_ftdi
  ];

  colconTestDepends = [
  ];
}
