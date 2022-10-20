{
  boost,
  camera_calibration_parsers,
  catkin,
  cv_bridge,
  eigen,
  geometry_msgs,
  image_geometry,
  image_transport,
  message_filters,
  nav_msgs,
  nodelet,
  pkg-config,
  roscpp,
  rospy,
  rostest,
  std_msgs,
  swri_geometry_util,
  swri_math_util,
  swri_nodelet,
  swri_opencv_util,
  swri_roscpp,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_image_util";
  pkgFinal = final.noetic.swri_image_util;
  src = srcs.marti_common.swri_image_util;

  colconBuildDepends = [
    boost
    camera_calibration_parsers
    catkin
    cv_bridge
    eigen
    geometry_msgs
    image_geometry
    image_transport
    message_filters
    nav_msgs
    nodelet
    pkg-config
    roscpp
    rospy
    std_msgs
    swri_geometry_util
    swri_math_util
    swri_nodelet
    swri_opencv_util
    swri_roscpp
    tf
  ];

  colconRunDepends = [
    boost
    camera_calibration_parsers
    cv_bridge
    eigen
    geometry_msgs
    image_geometry
    image_transport
    message_filters
    nav_msgs
    nodelet
    roscpp
    rospy
    std_msgs
    swri_geometry_util
    swri_math_util
    swri_opencv_util
    swri_roscpp
    tf
  ];

  colconTestDepends = [
    rostest
  ];
}
