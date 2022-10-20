{
  aruco_opencv_msgs,
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  image_transport,
  nodelet,
  roscpp,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "aruco_opencv";
  pkgFinal = final.noetic.aruco_opencv;
  src = srcs.aruco_opencv.aruco_opencv;

  colconBuildDepends = [
    aruco_opencv_msgs
    catkin
    cv_bridge
    dynamic_reconfigure
    image_transport
    nodelet
    roscpp
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    image_transport
    nodelet
    roscpp
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
