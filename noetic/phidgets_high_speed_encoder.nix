{
  catkin,
  nodelet,
  phidgets_api,
  phidgets_msgs,
  pluginlib,
  roscpp,
  roslaunch,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_high_speed_encoder";
  pkgFinal = final.noetic.phidgets_high_speed_encoder;
  src = srcs.phidgets_drivers.phidgets_high_speed_encoder;

  colconBuildDepends = [
    catkin
    nodelet
    phidgets_api
    phidgets_msgs
    pluginlib
    roscpp
    roslaunch
    sensor_msgs
  ];

  colconRunDepends = [
    nodelet
    phidgets_api
    phidgets_msgs
    pluginlib
    roscpp
    roslaunch
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
