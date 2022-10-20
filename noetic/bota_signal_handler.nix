{
  catkin,
  gtest,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bota_signal_handler";
  pkgFinal = final.noetic.bota_signal_handler;
  src = srcs.bota_driver.bota_signal_handler;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    gtest
    rosunit
  ];
}
