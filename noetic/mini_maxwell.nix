{
  catkin,
  cmake_modules,
  dynamic_reconfigure,
  roslib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mini_maxwell";
  pkgFinal = final.noetic.mini_maxwell;
  src = srcs.jsk_3rdparty.mini_maxwell;

  colconBuildDepends = [
    catkin
    cmake_modules
    dynamic_reconfigure
    roslib
  ];

  colconRunDepends = [
    dynamic_reconfigure
  ];

  colconTestDepends = [
  ];
}
