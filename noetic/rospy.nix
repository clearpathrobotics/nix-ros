{
  catkin,
  genpy,
  python3Packages,
  roscpp,
  rosgraph,
  rosgraph_msgs,
  roslib,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rospy";
  pkgFinal = final.noetic.rospy;
  src = srcs.ros_comm.rospy;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    genpy
    python3Packages.numpy
    python3Packages.pyyaml
    python3Packages.rospkg
    roscpp
    rosgraph
    rosgraph_msgs
    roslib
    std_msgs
  ];

  colconTestDepends = [
  ];
}
