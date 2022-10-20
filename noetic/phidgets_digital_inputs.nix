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
  name = "phidgets_digital_inputs";
  pkgFinal = final.noetic.phidgets_digital_inputs;
  src = srcs.phidgets_drivers.phidgets_digital_inputs;

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
