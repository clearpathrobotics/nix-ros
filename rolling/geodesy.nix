{
  ament_cmake,
  angles,
  geographic_msgs,
  geometry_msgs,
  python3Packages,
  sensor_msgs,
  unique_identifier_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geodesy";
  pkgFinal = final.rolling.geodesy;
  src = srcs.geographic_info.geodesy;

  colconBuildDepends = [
    ament_cmake
    angles
    geographic_msgs
    geometry_msgs
    python3Packages.catkin-pkg
    python3Packages.pyproj
    sensor_msgs
    unique_identifier_msgs
  ];

  colconRunDepends = [
    angles
    geographic_msgs
    geometry_msgs
    python3Packages.pyproj
    sensor_msgs
    unique_identifier_msgs
  ];

  colconTestDepends = [
  ];
}
