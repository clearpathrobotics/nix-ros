{
  autoconf,
  catkin,
  git,
  libtool,
  rsync,
  zlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "grpc";
  pkgFinal = final.noetic.grpc;
  src = srcs.grpc.grpc;

  colconBuildDepends = [
    autoconf
    catkin
    git
    libtool
    rsync
    zlib
  ];

  colconRunDepends = [
    rsync
  ];

  colconTestDepends = [
  ];
}
