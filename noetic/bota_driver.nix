{
  catkin,
  rokubimini,
  rokubimini_bus_manager,
  rokubimini_ethercat,
  rokubimini_msgs,
  rokubimini_serial,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bota_driver";
  pkgFinal = final.noetic.bota_driver;
  src = srcs.bota_driver.bota_driver;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rokubimini
    rokubimini_bus_manager
    rokubimini_ethercat
    rokubimini_msgs
    rokubimini_serial
  ];

  colconTestDepends = [
  ];
}
