{
  catkin,
  nodelet,
  phidgets_api,
  roscpp,
  roslaunch,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_accelerometer";
  pkgFinal = final.noetic.phidgets_accelerometer;
  src = srcs.phidgets_drivers.phidgets_accelerometer;

  colconBuildDepends = [
    catkin
    nodelet
    phidgets_api
    roscpp
    roslaunch
    sensor_msgs
  ];

  colconRunDepends = [
    nodelet
    phidgets_api
    roscpp
    roslaunch
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
