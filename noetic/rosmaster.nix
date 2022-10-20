{
  catkin,
  python3Packages,
  rosgraph,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosmaster";
  pkgFinal = final.noetic.rosmaster;
  src = srcs.ros_comm.rosmaster;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.defusedxml
    rosgraph
  ];

  colconTestDepends = [
  ];
}
