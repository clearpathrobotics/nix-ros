{
  catkin,
  nodelet,
  pluginlib,
  rosconsole,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_proc";
  pkgFinal = final.noetic.laser_proc;
  src = srcs.laser_proc.laser_proc;

  colconBuildDepends = [
    catkin
    nodelet
    pluginlib
    rosconsole
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    nodelet
    pluginlib
    rosconsole
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
