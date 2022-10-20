{
  catkin,
  roscpp,
  rosgraph_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosout";
  pkgFinal = final.noetic.rosout;
  src = srcs.ros_comm.rosout;

  colconBuildDepends = [
    catkin
    roscpp
    rosgraph_msgs
  ];

  colconRunDepends = [
    roscpp
    rosgraph_msgs
  ];

  colconTestDepends = [
  ];
}
