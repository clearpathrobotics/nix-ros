{
  catkin,
  eigen,
  geometry_msgs,
  kdl_conversions,
  orocos-kdl,
  python3Packages,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf_conversions";
  pkgFinal = final.noetic.tf_conversions;
  src = srcs.geometry.tf_conversions;

  colconBuildDepends = [
    catkin
    eigen
    geometry_msgs
    kdl_conversions
    orocos-kdl
    tf
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    kdl_conversions
    orocos-kdl
    python3Packages.pykdl
    tf
  ];

  colconTestDepends = [
  ];
}
