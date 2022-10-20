{
  catkin,
  flexbe_core,
  flexbe_msgs,
  flexbe_testing,
  geometry_msgs,
  rosbag,
  rospy,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "flexbe_states";
  pkgFinal = final.noetic.flexbe_states;
  src = srcs.flexbe.flexbe_states;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
    flexbe_core
    flexbe_msgs
    flexbe_testing
    rosbag
    rospy
  ];

  colconTestDepends = [
    geometry_msgs
  ];
}
