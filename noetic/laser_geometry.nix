{
  angles,
  boost,
  catkin,
  eigen,
  python3Packages,
  roscpp,
  rosunit,
  sensor_msgs,
  tf,
  tf2,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_geometry";
  pkgFinal = final.noetic.laser_geometry;
  src = srcs.laser_geometry.laser_geometry;

  colconBuildDepends = [
    angles
    boost
    catkin
    eigen
    roscpp
    sensor_msgs
    tf
    tf2
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    angles
    boost
    python3Packages.numpy
    roscpp
    sensor_msgs
    tf
    tf2
  ];

  colconTestDepends = [
    rosunit
  ];
}
