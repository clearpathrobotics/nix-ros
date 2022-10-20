{
  catkin,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_rosgraph";
  pkgFinal = final.noetic.test_rosgraph;
  src = srcs.ros_comm.test_rosgraph;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
