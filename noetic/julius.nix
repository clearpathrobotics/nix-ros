{
  catkin,
  mk,
  roslib,
  rospack,
  rsync,
  unzip,
  wget,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "julius";
  pkgFinal = final.noetic.julius;
  src = srcs.jsk_3rdparty.julius;

  colconBuildDepends = [
    catkin
    mk
    roslib
    rospack
    rsync
    unzip
    wget
  ];

  colconRunDepends = [
    rsync
    unzip
    wget
  ];

  colconTestDepends = [
  ];
}
