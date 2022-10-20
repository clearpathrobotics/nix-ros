{
  catkin,
  mrpt_generic_sensor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_sensors_examples";
  pkgFinal = final.noetic.mrpt_sensors_examples;
  src = srcs.mrpt_sensors.mrpt_sensors_examples;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    mrpt_generic_sensor
  ];

  colconTestDepends = [
  ];
}
