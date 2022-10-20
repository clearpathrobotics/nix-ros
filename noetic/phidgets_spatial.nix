{
  catkin,
  imu_filter_madgwick,
  nodelet,
  phidgets_api,
  pluginlib,
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
  name = "phidgets_spatial";
  pkgFinal = final.noetic.phidgets_spatial;
  src = srcs.phidgets_drivers.phidgets_spatial;

  colconBuildDepends = [
    catkin
    nodelet
    phidgets_api
    pluginlib
    roscpp
    roslaunch
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    imu_filter_madgwick
    nodelet
    phidgets_api
    pluginlib
    roscpp
    roslaunch
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
