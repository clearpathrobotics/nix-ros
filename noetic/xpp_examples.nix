{
  catkin,
  rosbag,
  roscpp,
  xpp_hyq,
  xpp_quadrotor,
  xpp_vis,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "xpp_examples";
  pkgFinal = final.noetic.xpp_examples;
  src = srcs.xpp.xpp_examples;

  colconBuildDepends = [
    catkin
    rosbag
    roscpp
    xpp_hyq
    xpp_quadrotor
    xpp_vis
  ];

  colconRunDepends = [
    rosbag
    roscpp
    xpp_hyq
    xpp_quadrotor
    xpp_vis
  ];

  colconTestDepends = [
  ];
}
