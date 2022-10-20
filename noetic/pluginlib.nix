{
  boost,
  catkin,
  class_loader,
  cmake_modules,
  rosconsole,
  roslib,
  tinyxml-2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pluginlib";
  pkgFinal = final.noetic.pluginlib;
  src = srcs.pluginlib.pluginlib;

  colconBuildDepends = [
    boost
    catkin
    class_loader
    cmake_modules
    rosconsole
    roslib
    tinyxml-2
  ];

  colconRunDepends = [
    boost
    class_loader
    rosconsole
    roslib
    tinyxml-2
  ];

  colconTestDepends = [
  ];
}
