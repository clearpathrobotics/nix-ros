{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_docker_control";
  pkgFinal = final.noetic.cob_docker_control;
  src = srcs.cob_substitute.cob_docker_control;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
