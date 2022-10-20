{
  catkin,
  mk,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lpg_planner";
  pkgFinal = final.noetic.lpg_planner;
  src = srcs.jsk_3rdparty.lpg_planner;

  colconBuildDepends = [
    catkin
    mk
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
