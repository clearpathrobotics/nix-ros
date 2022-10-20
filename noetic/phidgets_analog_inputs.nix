{
  catkin,
  nodelet,
  phidgets_api,
  roscpp,
  roslaunch,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_analog_inputs";
  pkgFinal = final.noetic.phidgets_analog_inputs;
  src = srcs.phidgets_drivers.phidgets_analog_inputs;

  colconBuildDepends = [
    catkin
    nodelet
    phidgets_api
    roscpp
    roslaunch
    std_msgs
  ];

  colconRunDepends = [
    nodelet
    phidgets_api
    roscpp
    roslaunch
    std_msgs
  ];

  colconTestDepends = [
  ];
}
