{
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  message_generation,
  message_runtime,
  pcl_conversions,
  pcl_ros,
  roscpp,
  rospy,
  sensor_msgs,
  tf,
  tf2,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sick_scan";
  pkgFinal = final.noetic.sick_scan;
  src = srcs.sick_scan.sick_scan;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    dynamic_reconfigure
    message_generation
    roscpp
    rospy
    sensor_msgs
    tf
    tf2
    visualization_msgs
  ];

  colconRunDepends = [
    diagnostic_updater
    dynamic_reconfigure
    message_runtime
    pcl_conversions
    pcl_ros
    roscpp
    rospy
    sensor_msgs
    tf
    tf2
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
