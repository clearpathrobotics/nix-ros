{
  mrpt_generic_sensor,
  mrpt_sensorlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_sensors";
  pkgFinal = final.rolling.mrpt_sensors;
  src = srcs.mrpt_sensors.mrpt_sensors;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    mrpt_generic_sensor
    mrpt_sensorlib
  ];

  colconTestDepends = [
  ];
}
