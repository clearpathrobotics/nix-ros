{
  clang,
  cmake,
  cppcheck,
  gtest,
  include-what-you-use,
  lcov,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_industrial_cmake_boilerplate";
  pkgFinal = final.noetic.ros_industrial_cmake_boilerplate;
  src = srcs.ros_industrial_cmake_boilerplate.ros_industrial_cmake_boilerplate;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    clang
    cppcheck
    gtest
    include-what-you-use
    lcov
  ];
}
