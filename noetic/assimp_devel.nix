{
  boost,
  cacert,
  catkin,
  git,
  mk,
  openssl,
  rosboost_cfg,
  rosbuild,
  unzip,
  zlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "assimp_devel";
  pkgFinal = final.noetic.assimp_devel;
  src = srcs.jsk_3rdparty.assimp_devel;

  colconBuildDepends = [
    boost
    cacert
    catkin
    git
    mk
    openssl
    rosboost_cfg
    rosbuild
    unzip
    zlib
  ];

  colconRunDepends = [
    boost
    zlib
  ];

  colconTestDepends = [
  ];
}
