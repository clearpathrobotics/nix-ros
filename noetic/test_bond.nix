{
  bondcpp,
  bondpy,
  catkin,
  cmake_modules,
  message_generation,
  rostest,
  util-linux,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_bond";
  pkgFinal = final.noetic.test_bond;
  src = srcs.bond_core.test_bond;

  colconBuildDepends = [
    bondcpp
    catkin
    cmake_modules
    message_generation
    rostest
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    bondpy
    util-linux
  ];
}
