{
  catkin,
  geodesy,
  geographic_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geographic_info";
  pkgFinal = final.noetic.geographic_info;
  src = srcs.geographic_info.geographic_info;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geodesy
    geographic_msgs
  ];

  colconTestDepends = [
  ];
}
