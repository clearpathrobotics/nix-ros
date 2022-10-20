{
  catkin,
  eigen,
  geometry_msgs,
  gtest,
  roscpp,
  rosunit,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rokubimini";
  pkgFinal = final.noetic.rokubimini;
  src = srcs.bota_driver.rokubimini;

  colconBuildDepends = [
    catkin
    eigen
    geometry_msgs
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    gtest
    rosunit
  ];
}
