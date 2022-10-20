{
  cmake,
  mrpt2,
  mrpt_sensorlib,
  ros_environment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_generic_sensor";
  pkgFinal = final.noetic.mrpt_generic_sensor;
  src = srcs.mrpt_sensors.mrpt_generic_sensor;

  colconBuildDepends = [
    cmake
    mrpt2
    mrpt_sensorlib
    ros_environment
  ];

  colconRunDepends = [
    mrpt2
    mrpt_sensorlib
  ];

  colconTestDepends = [
  ];
}
