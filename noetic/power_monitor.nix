{
  catkin,
  dynamic_reconfigure,
  pr2_msgs,
  roscpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "power_monitor";
  pkgFinal = final.noetic.power_monitor;
  src = srcs.pr2_power_drivers.power_monitor;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    pr2_msgs
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    pr2_msgs
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
