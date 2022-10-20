{
  catkin,
  ethercat_grant,
  rokubimini,
  rokubimini_bus_manager,
  rokubimini_msgs,
  soem,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rokubimini_ethercat";
  pkgFinal = final.noetic.rokubimini_ethercat;
  src = srcs.bota_driver.rokubimini_ethercat;

  colconBuildDepends = [
    catkin
    ethercat_grant
    rokubimini
    rokubimini_bus_manager
    rokubimini_msgs
    soem
  ];

  colconRunDepends = [
    ethercat_grant
    rokubimini
    rokubimini_bus_manager
    rokubimini_msgs
    soem
  ];

  colconTestDepends = [
  ];
}
