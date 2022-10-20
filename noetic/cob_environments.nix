{
  catkin,
  cob_default_env_config,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_environments";
  pkgFinal = final.noetic.cob_environments;
  src = srcs.cob_environments.cob_environments;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_default_env_config
  ];

  colconTestDepends = [
  ];
}
