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
  name = "phidgets_magnetometer";
  pkgFinal = final.noetic.phidgets_magnetometer;
  src = srcs.phidgets_drivers.phidgets_magnetometer;

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
