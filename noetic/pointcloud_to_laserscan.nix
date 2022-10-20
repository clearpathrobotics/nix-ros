{
  catkin,
  laser_geometry,
  message_filters,
  nodelet,
  roscpp,
  roslint,
  sensor_msgs,
  tf2,
  tf2_ros,
  tf2_sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pointcloud_to_laserscan";
  pkgFinal = final.noetic.pointcloud_to_laserscan;
  src = srcs.pointcloud_to_laserscan.pointcloud_to_laserscan;

  colconBuildDepends = [
    catkin
    laser_geometry
    message_filters
    nodelet
    roscpp
    sensor_msgs
    tf2
    tf2_ros
    tf2_sensor_msgs
  ];

  colconRunDepends = [
    laser_geometry
    message_filters
    nodelet
    roscpp
    sensor_msgs
    tf2
    tf2_ros
    tf2_sensor_msgs
  ];

  colconTestDepends = [
    roslint
  ];
}
