{
  geometry_msgs,
  mrpt2,
  mrpt_msgs,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_sensorlib";
  pkgFinal = final.rolling.mrpt_sensorlib;
  src = srcs.mrpt_sensors.mrpt_sensorlib;

  colconBuildDepends = [
    geometry_msgs
    mrpt2
    mrpt_msgs
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    mrpt2
    mrpt_msgs
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
