{
  catkin,
  cv_bridge,
  geometry_msgs,
  image_geometry,
  image_transport,
  image_view,
  message_filters,
  message_generation,
  message_runtime,
  pcl_ros,
  python3Packages,
  roscpp,
  rostest,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_view2";
  pkgFinal = final.noetic.image_view2;
  src = srcs.jsk_common.image_view2;

  colconBuildDepends = [
    catkin
    cv_bridge
    geometry_msgs
    image_geometry
    image_transport
    image_view
    message_filters
    message_generation
    pcl_ros
    roscpp
    rostest
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    cv_bridge
    geometry_msgs
    image_geometry
    image_transport
    image_view
    message_filters
    message_runtime
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconTestDepends = [
    python3Packages.numpy
    python3Packages.scipy
  ];
}
