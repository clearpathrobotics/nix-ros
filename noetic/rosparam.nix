{
  catkin,
  python3Packages,
  rosgraph,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosparam";
  pkgFinal = final.noetic.rosparam;
  src = srcs.ros_comm.rosparam;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.pyyaml
    rosgraph
  ];

  colconTestDepends = [
  ];
}
