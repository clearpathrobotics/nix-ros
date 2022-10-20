{
  catkin,
  mk,
  rosboost_cfg,
  rosbuild,
  roscpp,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosping";
  pkgFinal = final.noetic.rosping;
  src = srcs.jsk_3rdparty.rosping;

  colconBuildDepends = [
    catkin
    mk
    rosboost_cfg
    rosbuild
    roscpp
    rostest
    std_msgs
  ];

  colconRunDepends = [
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
