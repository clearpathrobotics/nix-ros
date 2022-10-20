{
  mrpt2,
  mrpt_sensorlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_generic_sensor";
  pkgFinal = final.rolling.mrpt_generic_sensor;
  src = srcs.mrpt_sensors.mrpt_generic_sensor;

  colconBuildDepends = [
    mrpt2
    mrpt_sensorlib
  ];

  colconRunDepends = [
    mrpt2
    mrpt_sensorlib
  ];

  colconTestDepends = [
  ];
}
