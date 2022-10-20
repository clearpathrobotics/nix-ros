{
  bota_node,
  catkin,
  geometry_msgs,
  gtest,
  rokubimini,
  rokubimini_bus_manager,
  rokubimini_ethercat,
  rokubimini_msgs,
  rokubimini_serial,
  rosgraph_msgs,
  rostest,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bota_driver_testing";
  pkgFinal = final.noetic.bota_driver_testing;
  src = srcs.bota_driver.bota_driver_testing;

  colconBuildDepends = [
    bota_node
    catkin
    geometry_msgs
    rokubimini
    rokubimini_bus_manager
    rokubimini_ethercat
    rokubimini_msgs
    rokubimini_serial
    rosgraph_msgs
    rostest
  ];

  colconRunDepends = [
    bota_node
    geometry_msgs
    rokubimini
    rokubimini_bus_manager
    rokubimini_ethercat
    rokubimini_msgs
    rokubimini_serial
    rosgraph_msgs
    rostest
  ];

  colconTestDepends = [
    gtest
    rosunit
  ];
}
