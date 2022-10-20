{
  boost,
  catkin,
  cv_bridge,
  diagnostic_msgs,
  genpy,
  geographic_msgs,
  geometry_msgs,
  geos,
  gps_common,
  libyamlcpp,
  marti_nav_msgs,
  nodelet,
  pkg-config,
  proj,
  python3Packages,
  roscpp,
  rospy,
  rostest,
  sensor_msgs,
  swri_math_util,
  swri_nodelet,
  swri_roscpp,
  swri_yaml_util,
  tf,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_transform_util";
  pkgFinal = final.noetic.swri_transform_util;
  src = srcs.marti_common.swri_transform_util;

  colconBuildDepends = [
    boost
    catkin
    cv_bridge
    diagnostic_msgs
    genpy
    geographic_msgs
    geometry_msgs
    geos
    gps_common
    libyamlcpp
    marti_nav_msgs
    nodelet
    pkg-config
    proj
    python3Packages.setuptools
    roscpp
    rospy
    swri_math_util
    swri_nodelet
    swri_roscpp
    swri_yaml_util
    tf
    topic_tools
  ];

  colconRunDepends = [
    boost
    cv_bridge
    diagnostic_msgs
    genpy
    geographic_msgs
    geometry_msgs
    geos
    gps_common
    libyamlcpp
    marti_nav_msgs
    nodelet
    proj
    python3Packages.numpy
    roscpp
    rospy
    sensor_msgs
    swri_math_util
    swri_nodelet
    swri_roscpp
    swri_yaml_util
    tf
    topic_tools
  ];

  colconTestDepends = [
    rostest
  ];
}
