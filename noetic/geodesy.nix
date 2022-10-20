{
  angles,
  catkin,
  geographic_msgs,
  geometry_msgs,
  python3Packages,
  rosunit,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geodesy";
  pkgFinal = final.noetic.geodesy;
  src = srcs.geographic_info.geodesy;

  colconBuildDepends = [
    angles
    catkin
    geographic_msgs
    geometry_msgs
    python3Packages.catkin-pkg
    python3Packages.setuptools
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    geographic_msgs
    geometry_msgs
    python3Packages.pyproj
    sensor_msgs
    tf
  ];

  colconTestDepends = [
    rosunit
  ];
}
