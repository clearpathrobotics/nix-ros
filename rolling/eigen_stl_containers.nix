{
  ament_cmake,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eigen_stl_containers";
  pkgFinal = final.rolling.eigen_stl_containers;
  src = srcs.eigen_stl_containers.eigen_stl_containers;

  colconBuildDepends = [
    ament_cmake
    eigen
  ];

  colconRunDepends = [
    eigen
  ];

  colconTestDepends = [
  ];
}
