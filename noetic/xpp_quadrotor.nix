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
  name = "xpp_quadrotor";
  pkgFinal = final.noetic.xpp_quadrotor;
  src = srcs.xpp.xpp_quadrotor;

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
