{
  boost,
  catkin,
  cv_bridge,
  eigen,
  roscpp,
  rospy,
  rosunit,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_geometry";
  pkgFinal = final.noetic.tuw_geometry;
  src = srcs.tuw_geometry.tuw_geometry;

  colconBuildDepends = [
    boost
    catkin
    cv_bridge
    eigen
    roscpp
    rospy
    std_msgs
  ];

  colconRunDepends = [
    cv_bridge
    roscpp
    rospy
    std_msgs
  ];

  colconTestDepends = [
    rosunit
  ];
}
