{
  catkin,
  rospack,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbash";
  pkgFinal = final.noetic.rosbash;
  src = srcs.ros.rosbash;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    catkin
    rospack
  ];

  colconTestDepends = [
  ];
}
