{
  bison,
  cacert,
  catkin,
  flex,
  mk,
  openssl,
  rosbash,
  rosbuild,
  roslib,
  rospack,
  unzip,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ff";
  pkgFinal = final.noetic.ff;
  src = srcs.jsk_3rdparty.ff;

  colconBuildDepends = [
    bison
    cacert
    catkin
    flex
    mk
    openssl
    rosbash
    rosbuild
    roslib
    rospack
    unzip
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
