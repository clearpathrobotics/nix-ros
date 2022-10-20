{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosgraph";
  pkgFinal = final.noetic.rosgraph;
  src = srcs.ros_comm.rosgraph;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.netifaces
    python3Packages.pyyaml
    python3Packages.rospkg
  ];

  colconTestDepends = [
    python3Packages.mock
  ];
}
