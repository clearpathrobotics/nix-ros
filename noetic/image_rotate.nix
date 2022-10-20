{
  catkin,
  cmake_modules,
  cv_bridge,
  dynamic_reconfigure,
  geometry_msgs,
  image_transport,
  nodelet,
  roscpp,
  rostest,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_rotate";
  pkgFinal = final.noetic.image_rotate;
  src = srcs.image_pipeline.image_rotate;

  colconBuildDepends = [
    catkin
    cmake_modules
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    image_transport
    nodelet
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    image_transport
    nodelet
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    rostest
  ];
}
