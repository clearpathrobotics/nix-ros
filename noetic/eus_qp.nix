{
  catkin,
  cmake_modules,
  eigen,
  eus_qpoases,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eus_qp";
  pkgFinal = final.noetic.eus_qp;
  src = srcs.jsk_control.eus_qp;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
    rostest
  ];

  colconRunDepends = [
    eigen
  ];

  colconTestDepends = [
    eus_qpoases
  ];
}
