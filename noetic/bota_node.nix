{
  bota_signal_handler,
  bota_worker,
  catkin,
  gtest,
  roscpp,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bota_node";
  pkgFinal = final.noetic.bota_node;
  src = srcs.bota_driver.bota_node;

  colconBuildDepends = [
    bota_signal_handler
    bota_worker
    catkin
    roscpp
  ];

  colconRunDepends = [
    bota_signal_handler
    bota_worker
    roscpp
  ];

  colconTestDepends = [
    gtest
    rosunit
  ];
}
