{
  ament_cmake,
  smacc2,
  smacc2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "multirole_sensor_client";
  pkgFinal = final.rolling.multirole_sensor_client;
  src = srcs.SMACC2.multirole_sensor_client;

  colconBuildDepends = [
    ament_cmake
    smacc2
    smacc2_msgs
  ];

  colconRunDepends = [
    smacc2
    smacc2_msgs
  ];

  colconTestDepends = [
  ];
}
