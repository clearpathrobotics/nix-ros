{
  catkin,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "xpp_states";
  pkgFinal = final.noetic.xpp_states;
  src = srcs.xpp.xpp_states;

  colconBuildDepends = [
    catkin
    eigen
  ];

  colconRunDepends = [
    eigen
  ];

  colconTestDepends = [
  ];
}
