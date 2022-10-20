{
  angles,
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  eigen,
  libyamlcpp,
  nodelet,
  roscpp,
  roslaunch,
  roslib,
  roslint,
  rostest,
  rosunit,
  sensor_msgs,
  tf2_ros,
  velodyne_driver,
  velodyne_laserscan,
  velodyne_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_pointcloud";
  pkgFinal = final.noetic.velodyne_pointcloud;
  src = srcs.velodyne.velodyne_pointcloud;

  colconBuildDepends = [
    angles
    catkin
    diagnostic_updater
    dynamic_reconfigure
    eigen
    libyamlcpp
    nodelet
    roscpp
    roslib
    roslint
    sensor_msgs
    tf2_ros
    velodyne_driver
    velodyne_msgs
  ];

  colconRunDepends = [
    angles
    diagnostic_updater
    dynamic_reconfigure
    eigen
    libyamlcpp
    nodelet
    roscpp
    roslib
    sensor_msgs
    tf2_ros
    velodyne_driver
    velodyne_laserscan
    velodyne_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
    rosunit
    tf2_ros
  ];
}
