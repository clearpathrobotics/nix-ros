{
  catkin,
  ethercat_hardware,
  fingertip_pressure,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_ethercat_drivers";
  pkgFinal = final.noetic.pr2_ethercat_drivers;
  src = srcs.pr2_ethercat_drivers.pr2_ethercat_drivers;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ethercat_hardware
    fingertip_pressure
  ];

  colconTestDepends = [
  ];
}
