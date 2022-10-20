{
  catkin,
  eigen,
  geometry_msgs,
  orocos-kdl,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eigen_conversions";
  pkgFinal = final.noetic.eigen_conversions;
  src = srcs.geometry.eigen_conversions;

  colconBuildDepends = [
    catkin
    eigen
    geometry_msgs
    orocos-kdl
    std_msgs
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    orocos-kdl
    std_msgs
  ];

  colconTestDepends = [
  ];
}
