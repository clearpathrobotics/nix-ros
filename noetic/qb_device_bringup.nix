{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_device_bringup";
  pkgFinal = final.noetic.qb_device_bringup;
  src = srcs.qb_device.qb_device_bringup;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
