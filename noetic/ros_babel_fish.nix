{
  actionlib,
  catkin,
  geometry_msgs,
  openssl,
  ros_babel_fish_test_msgs,
  rosapi,
  roscpp,
  roscpp_tutorials,
  rosgraph_msgs,
  roslib,
  rostest,
  std_msgs,
  std_srvs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_babel_fish";
  pkgFinal = final.noetic.ros_babel_fish;
  src = srcs.ros_babel_fish.ros_babel_fish;

  colconBuildDepends = [
    actionlib
    catkin
    openssl
    roscpp
    roslib
  ];

  colconRunDepends = [
    actionlib
    openssl
    roscpp
    roslib
  ];

  colconTestDepends = [
    geometry_msgs
    ros_babel_fish_test_msgs
    rosapi
    roscpp_tutorials
    rosgraph_msgs
    rostest
    std_msgs
    std_srvs
    visualization_msgs
  ];
}
