{
  catkin,
  cmake_modules,
  eigen,
  message_generation,
  message_runtime,
  roscpp,
  roslib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "parameter_pa";
  pkgFinal = final.noetic.parameter_pa;
  src = srcs.parameter_pa.parameter_pa;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
    message_generation
    roscpp
    roslib
  ];

  colconRunDepends = [
    cmake_modules
    eigen
    message_runtime
    roscpp
    roslib
  ];

  colconTestDepends = [
  ];
}
