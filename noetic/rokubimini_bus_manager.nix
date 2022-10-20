{
  bota_node,
  catkin,
  rokubimini,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rokubimini_bus_manager";
  pkgFinal = final.noetic.rokubimini_bus_manager;
  src = srcs.bota_driver.rokubimini_bus_manager;

  colconBuildDepends = [
    bota_node
    catkin
    rokubimini
  ];

  colconRunDepends = [
    bota_node
    rokubimini
  ];

  colconTestDepends = [
  ];
}
