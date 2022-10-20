{
  angles,
  catkin,
  eigen_conversions,
  kdl_conversions,
  tf,
  tf_conversions,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geometry";
  pkgFinal = final.noetic.geometry;
  src = srcs.geometry.geometry;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    angles
    eigen_conversions
    kdl_conversions
    tf
    tf_conversions
  ];

  colconTestDepends = [
  ];
}
