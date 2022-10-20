{
  ament_cmake,
  launch,
  phidgets_analog_inputs,
  phidgets_digital_inputs,
  phidgets_digital_outputs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_ik";
  pkgFinal = final.rolling.phidgets_ik;
  src = srcs.phidgets_drivers.phidgets_ik;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    launch
    phidgets_analog_inputs
    phidgets_digital_inputs
    phidgets_digital_outputs
  ];

  colconTestDepends = [
  ];
}
