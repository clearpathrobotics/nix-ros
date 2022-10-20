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
  name = "phidgets_temperature";
  pkgFinal = final.noetic.phidgets_temperature;
  src = srcs.phidgets_drivers.phidgets_temperature;

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
