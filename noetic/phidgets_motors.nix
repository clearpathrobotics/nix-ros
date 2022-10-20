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
  name = "phidgets_motors";
  pkgFinal = final.noetic.phidgets_motors;
  src = srcs.phidgets_drivers.phidgets_motors;

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
