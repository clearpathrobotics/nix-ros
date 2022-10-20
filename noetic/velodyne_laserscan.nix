{
  catkin,
  dynamic_reconfigure,
  nodelet,
  roscpp,
  roslaunch,
  roslint,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_laserscan";
  pkgFinal = final.noetic.velodyne_laserscan;
  src = srcs.velodyne.velodyne_laserscan;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    nodelet
    roscpp
    roslint
    sensor_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    nodelet
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
