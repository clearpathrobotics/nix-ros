{
  boost,
  catkin,
  cmake_modules,
  gtest,
  pkg-config,
  python3,
  python3Packages,
  ros_environment,
  tinyxml-2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rospack";
  pkgFinal = final.noetic.rospack;
  src = srcs.rospack.rospack;

  colconBuildDepends = [
    boost
    catkin
    cmake_modules
    gtest
    pkg-config
    python3
    tinyxml-2
  ];

  colconRunDepends = [
    boost
    pkg-config
    python3
    python3Packages.catkin-pkg
    python3Packages.rosdep
    ros_environment
    tinyxml-2
  ];

  colconTestDepends = [
    python3Packages.coverage
  ];
}
