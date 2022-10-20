{
  catkin,
  libphidget22,
  phidgets_accelerometer,
  phidgets_analog_inputs,
  phidgets_api,
  phidgets_digital_inputs,
  phidgets_digital_outputs,
  phidgets_gyroscope,
  phidgets_high_speed_encoder,
  phidgets_ik,
  phidgets_magnetometer,
  phidgets_motors,
  phidgets_msgs,
  phidgets_spatial,
  phidgets_temperature,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_drivers";
  pkgFinal = final.noetic.phidgets_drivers;
  src = srcs.phidgets_drivers.phidgets_drivers;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    libphidget22
    phidgets_accelerometer
    phidgets_analog_inputs
    phidgets_api
    phidgets_digital_inputs
    phidgets_digital_outputs
    phidgets_gyroscope
    phidgets_high_speed_encoder
    phidgets_ik
    phidgets_magnetometer
    phidgets_motors
    phidgets_msgs
    phidgets_spatial
    phidgets_temperature
  ];

  colconTestDepends = [
  ];
}
