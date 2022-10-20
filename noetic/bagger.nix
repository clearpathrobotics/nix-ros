{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  rosbag,
  roscpp,
  roslint,
  rospy,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bagger";
  pkgFinal = final.noetic.bagger;
  src = srcs.bagger.bagger;

  colconBuildDepends = [
    catkin
    message_generation
    roscpp
    roslint
    rostest
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    rosbag
    roscpp
    rospy
    rostest
    std_msgs
  ];

  colconTestDepends = [
    geometry_msgs
    nav_msgs
  ];
}
