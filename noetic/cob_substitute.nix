{
  catkin,
  cob_docker_control,
  cob_reflector_referencing,
  cob_safety_controller,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_substitute";
  pkgFinal = final.noetic.cob_substitute;
  src = srcs.cob_substitute.cob_substitute;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_docker_control
    cob_reflector_referencing
    cob_safety_controller
  ];

  colconTestDepends = [
  ];
}
