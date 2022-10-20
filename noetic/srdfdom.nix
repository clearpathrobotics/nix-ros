{
  boost,
  catkin,
  cmake_modules,
  console-bridge,
  rostest,
  tinyxml-2,
  urdf,
  urdfdom_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "srdfdom";
  pkgFinal = final.noetic.srdfdom;
  src = srcs.srdfdom.srdfdom;

  colconBuildDepends = [
    boost
    catkin
    cmake_modules
    console-bridge
    tinyxml-2
    urdf
  ];

  colconRunDepends = [
    boost
    tinyxml-2
    urdf
    urdfdom_py
  ];

  colconTestDepends = [
    rostest
  ];
}
