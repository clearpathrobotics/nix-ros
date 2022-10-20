{
  cmake,
  geometry_msgs,
  mrpt2,
  mrpt_msgs,
  ros_environment,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_sensorlib";
  pkgFinal = final.noetic.mrpt_sensorlib;
  src = srcs.mrpt_sensors.mrpt_sensorlib;

  colconBuildDepends = [
    cmake
    geometry_msgs
    mrpt2
    mrpt_msgs
    ros_environment
    sensor_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    mrpt2
    mrpt_msgs
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
