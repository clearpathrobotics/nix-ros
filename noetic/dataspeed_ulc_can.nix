{
  can_msgs,
  catkin,
  dataspeed_ulc_msgs,
  geometry_msgs,
  nodelet,
  python3Packages,
  roscpp,
  roslib,
  rospy,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_ulc_can";
  pkgFinal = final.noetic.dataspeed_ulc_can;
  src = srcs.dataspeed_ulc_ros.dataspeed_ulc_can;

  colconBuildDepends = [
    can_msgs
    catkin
    dataspeed_ulc_msgs
    geometry_msgs
    nodelet
    python3Packages.setuptools
    roscpp
    rospy
    std_msgs
  ];

  colconRunDepends = [
    can_msgs
    dataspeed_ulc_msgs
    geometry_msgs
    nodelet
    roscpp
    rospy
    std_msgs
  ];

  colconTestDepends = [
    roslib
    rostest
  ];
}
