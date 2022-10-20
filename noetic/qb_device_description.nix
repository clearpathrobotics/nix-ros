{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_device_description";
  pkgFinal = final.noetic.qb_device_description;
  src = srcs.qb_device.qb_device_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
