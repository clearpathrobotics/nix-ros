{
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  libpcap,
  nodelet,
  roscpp,
  roslaunch,
  roslint,
  rostest,
  tf,
  velodyne_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_driver";
  pkgFinal = final.noetic.velodyne_driver;
  src = srcs.velodyne.velodyne_driver;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    dynamic_reconfigure
    libpcap
    nodelet
    roscpp
    roslint
    tf
    velodyne_msgs
  ];

  colconRunDepends = [
    diagnostic_updater
    dynamic_reconfigure
    libpcap
    nodelet
    roscpp
    tf
    velodyne_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
