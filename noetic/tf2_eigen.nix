{
  catkin,
  cmake_modules,
  eigen,
  geometry_msgs,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_eigen";
  pkgFinal = final.noetic.tf2_eigen;
  src = srcs.geometry2.tf2_eigen;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
    geometry_msgs
    tf2
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    tf2
  ];

  colconTestDepends = [
  ];
}
