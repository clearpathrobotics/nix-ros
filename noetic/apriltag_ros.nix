{
  apriltag,
  catkin,
  cmake_modules,
  cv_bridge,
  eigen,
  geometry_msgs,
  image_geometry,
  image_transport,
  message_generation,
  message_runtime,
  nodelet,
  opencv,
  pluginlib,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "apriltag_ros";
  pkgFinal = final.noetic.apriltag_ros;
  src = srcs.apriltag_ros.apriltag_ros;

  colconBuildDepends = [
    apriltag
    catkin
    cmake_modules
    cv_bridge
    eigen
    geometry_msgs
    image_geometry
    image_transport
    message_generation
    nodelet
    opencv
    pluginlib
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    apriltag
    cv_bridge
    eigen
    geometry_msgs
    image_geometry
    image_transport
    message_runtime
    nodelet
    opencv
    pluginlib
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
