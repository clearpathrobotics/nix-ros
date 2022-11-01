{
  catkin,
  rostest,
  subversion,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eus_qpoases";
  pkgFinal = final.noetic.eus_qpoases;
  src = srcs.jsk_control.eus_qpoases;

  colconBuildDepends = [
    catkin
    rostest
    subversion
  ];

  colconRunDepends = [
    rostest
  ];

  colconTestDepends = [
  ];
}
