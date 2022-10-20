{
  boost,
  catkin,
  mk,
  python3Packages,
  rosboost_cfg,
  roslib,
  rospack,
  subversion,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libsiftfast";
  pkgFinal = final.noetic.libsiftfast;
  src = srcs.jsk_3rdparty.libsiftfast;

  colconBuildDepends = [
    boost
    catkin
    mk
    python3Packages.numpy
    rosboost_cfg
    roslib
    rospack
    subversion
  ];

  colconRunDepends = [
    boost
    python3Packages.numpy
  ];

  colconTestDepends = [
  ];
}
