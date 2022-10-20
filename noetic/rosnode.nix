{
  catkin,
  rosgraph,
  rostest,
  rostopic,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosnode";
  pkgFinal = final.noetic.rosnode;
  src = srcs.ros_comm.rosnode;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
    rosgraph
    rostopic
  ];

  colconTestDepends = [
  ];
}
