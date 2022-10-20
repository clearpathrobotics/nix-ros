{
  catkin,
  nodelet,
  phidgets_api,
  phidgets_msgs,
  roscpp,
  roslaunch,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_digital_outputs";
  pkgFinal = final.noetic.phidgets_digital_outputs;
  src = srcs.phidgets_drivers.phidgets_digital_outputs;

  colconBuildDepends = [
    catkin
    nodelet
    phidgets_api
    phidgets_msgs
    roscpp
    roslaunch
    std_msgs
  ];

  colconRunDepends = [
    nodelet
    phidgets_api
    phidgets_msgs
    roscpp
    roslaunch
    std_msgs
  ];

  colconTestDepends = [
  ];
}
