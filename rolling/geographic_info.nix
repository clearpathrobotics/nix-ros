{
  ament_cmake,
  geodesy,
  geographic_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geographic_info";
  pkgFinal = final.rolling.geographic_info;
  src = srcs.geographic_info.geographic_info;

  colconBuildDepends = [
    ament_cmake
    geodesy
    geographic_msgs
  ];

  colconRunDepends = [
    geodesy
    geographic_msgs
  ];

  colconTestDepends = [
  ];
}
