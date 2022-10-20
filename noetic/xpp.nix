{
  catkin,
  xpp_examples,
  xpp_hyq,
  xpp_msgs,
  xpp_quadrotor,
  xpp_states,
  xpp_vis,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "xpp";
  pkgFinal = final.noetic.xpp;
  src = srcs.xpp.xpp;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    xpp_examples
    xpp_hyq
    xpp_msgs
    xpp_quadrotor
    xpp_states
    xpp_vis
  ];

  colconTestDepends = [
  ];
}
