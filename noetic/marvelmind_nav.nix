{
  catkin,
  message_generation,
  message_runtime,
  roscpp,
  rospy,
  std_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "marvelmind_nav";
  pkgFinal = final.noetic.marvelmind_nav;
  src = srcs.marvelmind_nav.marvelmind_nav;

  colconBuildDepends = [
    catkin
    message_generation
    roscpp
    rospy
    std_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    message_runtime
    roscpp
    rospy
    std_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
