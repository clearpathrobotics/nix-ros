{
  catkin,
  nodelet,
  phidgets_api,
  roscpp,
  roslaunch,
  sensor_msgs,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_gyroscope";
  pkgFinal = final.noetic.phidgets_gyroscope;
  src = srcs.phidgets_drivers.phidgets_gyroscope;

  colconBuildDepends = [
    catkin
    nodelet
    phidgets_api
    roscpp
    roslaunch
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    nodelet
    phidgets_api
    roscpp
    roslaunch
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
