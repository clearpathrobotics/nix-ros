{
  catkin,
  nodelet,
  roscpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nodelet_tutorial_math";
  pkgFinal = final.noetic.nodelet_tutorial_math;
  src = srcs.common_tutorials.nodelet_tutorial_math;

  colconBuildDepends = [
    catkin
    nodelet
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    nodelet
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
