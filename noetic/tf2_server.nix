{
  catkin,
  geometry_msgs,
  gtest,
  message_generation,
  message_runtime,
  nodelet,
  python3Packages,
  roscpp,
  rospy,
  rostest,
  tf,
  tf2_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_server";
  pkgFinal = final.noetic.tf2_server;
  src = srcs.tf2_server.tf2_server;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    nodelet
    python3Packages.setuptools
    roscpp
    tf2_msgs
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    nodelet
    roscpp
    rospy
    tf2_msgs
    tf2_ros
  ];

  colconTestDepends = [
    gtest
    rostest
    tf
  ];
}
