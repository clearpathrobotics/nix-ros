{
  boost,
  catkin,
  cmake_modules,
  console-bridge,
  poco,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "class_loader";
  pkgFinal = final.noetic.class_loader;
  src = srcs.class_loader.class_loader;

  colconBuildDepends = [
    boost
    catkin
    cmake_modules
    console-bridge
    poco
  ];

  colconRunDepends = [
    boost
    console-bridge
    poco
  ];

  colconTestDepends = [
  ];
}
