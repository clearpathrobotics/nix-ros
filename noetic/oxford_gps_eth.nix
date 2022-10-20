{
  catkin,
  geometry_msgs,
  gps_common,
  nav_msgs,
  python3Packages,
  roscpp,
  roslaunch,
  rospy,
  rostest,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "oxford_gps_eth";
  pkgFinal = final.noetic.oxford_gps_eth;
  src = srcs.oxford_gps_eth.oxford_gps_eth;

  colconBuildDepends = [
    catkin
    geometry_msgs
    gps_common
    nav_msgs
    python3Packages.setuptools
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    gps_common
    nav_msgs
    roscpp
    roslaunch
    rospy
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
