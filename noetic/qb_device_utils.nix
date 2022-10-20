{
  catkin,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_device_utils";
  pkgFinal = final.noetic.qb_device_utils;
  src = srcs.qb_device.qb_device_utils;

  colconBuildDepends = [
    catkin
    roscpp
  ];

  colconRunDepends = [
    roscpp
  ];

  colconTestDepends = [
  ];
}
