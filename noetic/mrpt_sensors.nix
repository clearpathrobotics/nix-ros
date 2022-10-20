{
  catkin,
  mrpt_generic_sensor,
  mrpt_sensorlib,
  mrpt_sensors_examples,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_sensors";
  pkgFinal = final.noetic.mrpt_sensors;
  src = srcs.mrpt_sensors.mrpt_sensors;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    mrpt_generic_sensor
    mrpt_sensorlib
    mrpt_sensors_examples
  ];

  colconTestDepends = [
  ];
}
