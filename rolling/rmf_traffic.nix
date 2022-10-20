{
  ament_cmake_catch2,
  ament_cmake_uncrustify,
  cmake,
  eigen,
  eigen3_cmake_module,
  libccd,
  rmf_utils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_traffic";
  pkgFinal = final.rolling.rmf_traffic;
  src = srcs.rmf_traffic.rmf_traffic;

  colconBuildDepends = [
    cmake
    eigen
    eigen3_cmake_module
    libccd
    rmf_utils
  ];

  colconRunDepends = [
    eigen
    eigen3_cmake_module
    libccd
    rmf_utils
  ];

  colconTestDepends = [
    ament_cmake_catch2
    ament_cmake_uncrustify
  ];
}
