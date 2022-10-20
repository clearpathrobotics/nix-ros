{
  catkin,
  nodelet,
  phidgets_analog_inputs,
  phidgets_digital_inputs,
  phidgets_digital_outputs,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_ik";
  pkgFinal = final.noetic.phidgets_ik;
  src = srcs.phidgets_drivers.phidgets_ik;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    nodelet
    phidgets_analog_inputs
    phidgets_digital_inputs
    phidgets_digital_outputs
    roslaunch
  ];

  colconTestDepends = [
  ];
}
