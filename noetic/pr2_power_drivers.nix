{
  catkin,
  ocean_battery_driver,
  power_monitor,
  pr2_power_board,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_power_drivers";
  pkgFinal = final.noetic.pr2_power_drivers;
  src = srcs.pr2_power_drivers.pr2_power_drivers;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ocean_battery_driver
    power_monitor
    pr2_power_board
  ];

  colconTestDepends = [
  ];
}
