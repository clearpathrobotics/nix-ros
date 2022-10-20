{
  catkin,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_default_env_config";
  pkgFinal = final.noetic.cob_default_env_config;
  src = srcs.cob_environments.cob_default_env_config;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    roslaunch
  ];
}
