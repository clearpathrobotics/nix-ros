{
  catkin,
  dataspeed_ulc_can,
  dataspeed_ulc_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_ulc";
  pkgFinal = final.noetic.dataspeed_ulc;
  src = srcs.dataspeed_ulc_ros.dataspeed_ulc;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dataspeed_ulc_can
    dataspeed_ulc_msgs
  ];

  colconTestDepends = [
  ];
}
