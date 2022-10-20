{
  lcov,
  python3Packages,
  ros_environment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrt_cmake_modules";
  pkgFinal = final.rolling.mrt_cmake_modules;
  src = srcs.mrt_cmake_modules.mrt_cmake_modules;

  colconBuildDepends = [
    python3Packages.catkin-pkg
    python3Packages.pyyaml
    python3Packages.rospkg
    python3Packages.setuptools
    ros_environment
  ];

  colconRunDepends = [
    lcov
    python3Packages.catkin-pkg
    python3Packages.pyyaml
    python3Packages.rospkg
    python3Packages.setuptools
    ros_environment
  ];

  colconTestDepends = [
  ];
}
