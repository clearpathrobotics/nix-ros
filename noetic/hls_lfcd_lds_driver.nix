{
  boost,
  catkin,
  roscpp,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hls_lfcd_lds_driver";
  pkgFinal = final.noetic.hls_lfcd_lds_driver;
  src = srcs.hls-lfcd-lds-driver.hls_lfcd_lds_driver;

  colconBuildDepends = [
    boost
    catkin
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    boost
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
