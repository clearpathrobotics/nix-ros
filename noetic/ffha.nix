{
  bison,
  catkin,
  flex,
  gawk,
  mk,
  rosbuild,
  roslib,
  rospack,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ffha";
  pkgFinal = final.noetic.ffha;
  src = srcs.jsk_3rdparty.ffha;

  colconBuildDepends = [
    bison
    catkin
    flex
    gawk
    mk
    rosbuild
    roslib
    rospack
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
