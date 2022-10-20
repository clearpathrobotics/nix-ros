{
  catkin,
  rosbuild,
  rospack,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mk";
  pkgFinal = final.noetic.mk;
  src = srcs.ros.mk;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rosbuild
    rospack
  ];

  colconTestDepends = [
  ];
}
