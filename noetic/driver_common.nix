{
  catkin,
  driver_base,
  timestamp_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "driver_common";
  pkgFinal = final.noetic.driver_common;
  src = srcs.driver_common.driver_common;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    driver_base
    timestamp_tools
  ];

  colconTestDepends = [
  ];
}
