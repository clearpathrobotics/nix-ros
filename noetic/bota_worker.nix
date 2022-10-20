{
  catkin,
  gtest,
  roscpp,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bota_worker";
  pkgFinal = final.noetic.bota_worker;
  src = srcs.bota_driver.bota_worker;

  colconBuildDepends = [
    catkin
    roscpp
  ];

  colconRunDepends = [
    roscpp
  ];

  colconTestDepends = [
    gtest
    rosunit
  ];
}
