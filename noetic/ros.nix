{
  catkin,
  mk,
  rosbash,
  rosboost_cfg,
  rosbuild,
  rosclean,
  roscreate,
  roslang,
  roslib,
  rosmake,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros";
  pkgFinal = final.noetic.ros;
  src = srcs.ros.ros;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    catkin
    mk
    rosbash
    rosboost_cfg
    rosbuild
    rosclean
    roscreate
    roslang
    roslib
    rosmake
    rosunit
  ];

  colconTestDepends = [
  ];
}
