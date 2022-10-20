{
  catkin,
  geometry_msgs,
  message_filters,
  nodelet,
  roscpp,
  roslaunch,
  sensor_msgs,
  tf,
  tf2,
  tf2_ros,
  tf2_sensor_msgs,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imu_transformer";
  pkgFinal = final.noetic.imu_transformer;
  src = srcs.imu_pipeline.imu_transformer;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_filters
    nodelet
    roscpp
    sensor_msgs
    tf2
    tf2_ros
    tf2_sensor_msgs
    topic_tools
  ];

  colconRunDepends = [
    geometry_msgs
    message_filters
    nodelet
    roscpp
    sensor_msgs
    tf
    tf2
    tf2_ros
    tf2_sensor_msgs
    topic_tools
  ];

  colconTestDepends = [
    roslaunch
  ];
}
