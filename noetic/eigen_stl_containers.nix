{
  catkin,
  cmake_modules,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eigen_stl_containers";
  pkgFinal = final.noetic.eigen_stl_containers;
  src = srcs.eigen_stl_containers.eigen_stl_containers;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
  ];

  colconRunDepends = [
    eigen
  ];

  colconTestDepends = [
  ];
}
