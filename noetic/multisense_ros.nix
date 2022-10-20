{
  angles,
  catkin,
  cv_bridge,
  diagnostic_updater,
  dynamic_reconfigure,
  eigen,
  genmsg,
  geometry_msgs,
  image_geometry,
  image_transport,
  libjpeg_turbo,
  libyamlcpp,
  message_generation,
  message_runtime,
  multisense_lib,
  rosbag,
  roscpp,
  sensor_msgs,
  std_msgs,
  stereo_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "multisense_ros";
  pkgFinal = final.noetic.multisense_ros;
  src = srcs.multisense_ros.multisense_ros;

  colconBuildDepends = [
    angles
    catkin
    cv_bridge
    diagnostic_updater
    dynamic_reconfigure
    eigen
    genmsg
    geometry_msgs
    image_geometry
    image_transport
    libjpeg_turbo
    libyamlcpp
    message_generation
    message_runtime
    multisense_lib
    rosbag
    roscpp
    sensor_msgs
    std_msgs
    stereo_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    angles
    cv_bridge
    diagnostic_updater
    dynamic_reconfigure
    eigen
    genmsg
    geometry_msgs
    image_geometry
    image_transport
    libjpeg_turbo
    message_generation
    message_runtime
    multisense_lib
    rosbag
    roscpp
    sensor_msgs
    std_msgs
    stereo_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
