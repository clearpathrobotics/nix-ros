{
  avrdude,
  catkin,
  rokubimini,
  rokubimini_bus_manager,
  rokubimini_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rokubimini_serial";
  pkgFinal = final.noetic.rokubimini_serial;
  src = srcs.bota_driver.rokubimini_serial;

  colconBuildDepends = [
    catkin
    rokubimini
    rokubimini_bus_manager
    rokubimini_msgs
  ];

  colconRunDepends = [
    avrdude
    rokubimini
    rokubimini_bus_manager
    rokubimini_msgs
  ];

  colconTestDepends = [
  ];
}
