{
  catkin,
  python3Packages,
  rosgraph,
  rosparam,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_rosparam";
  pkgFinal = final.noetic.test_rosparam;
  src = srcs.ros_comm.test_rosparam;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    python3Packages.pyyaml
    rosgraph
    rosparam
  ];
}
