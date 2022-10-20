{
  catkin,
  qb_device_srvs,
  qb_device_utils,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_device_driver";
  pkgFinal = final.noetic.qb_device_driver;
  src = srcs.qb_device.qb_device_driver;

  colconBuildDepends = [
    catkin
    qb_device_srvs
    qb_device_utils
    roscpp
  ];

  colconRunDepends = [
    qb_device_srvs
    qb_device_utils
    roscpp
  ];

  colconTestDepends = [
  ];
}
