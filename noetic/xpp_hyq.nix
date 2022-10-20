{
  catkin,
  roscpp,
  xacro,
  xpp_vis,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "xpp_hyq";
  pkgFinal = final.noetic.xpp_hyq;
  src = srcs.xpp.xpp_hyq;

  colconBuildDepends = [
    catkin
    roscpp
    xacro
    xpp_vis
  ];

  colconRunDepends = [
    roscpp
    xacro
    xpp_vis
  ];

  colconTestDepends = [
  ];
}
