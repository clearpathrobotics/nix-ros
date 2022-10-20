{
  catkin,
  cmake_modules,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hebi_cpp_api";
  pkgFinal = final.noetic.hebi_cpp_api;
  src = srcs.hebi_cpp_api_ros.hebi_cpp_api;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
