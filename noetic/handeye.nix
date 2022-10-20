{
  baldor,
  catkin,
  criutils,
  geometry_msgs,
  message_generation,
  message_runtime,
  python3Packages,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "handeye";
  pkgFinal = final.noetic.handeye;
  src = srcs.handeye.handeye;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    baldor
    criutils
    geometry_msgs
    message_runtime
    python3Packages.matplotlib
    python3Packages.numpy
    python3Packages.scipy
    std_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
