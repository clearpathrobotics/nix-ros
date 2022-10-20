{
  catkin,
  cmake_modules,
  libtool,
  mk,
  rosbuild,
  rospack,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nlopt";
  pkgFinal = final.noetic.nlopt;
  src = srcs.jsk_3rdparty.nlopt;

  colconBuildDepends = [
    catkin
    cmake_modules
    libtool
    mk
    rosbuild
    rospack
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
