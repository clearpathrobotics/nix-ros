{
  assimp_devel,
  catkin,
  pkg-config,
  roseus,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eus_assimp";
  pkgFinal = final.noetic.eus_assimp;
  src = srcs.jsk_model_tools.eus_assimp;

  colconBuildDepends = [
    assimp_devel
    catkin
    pkg-config
  ];

  colconRunDepends = [
    assimp_devel
    roseus
  ];

  colconTestDepends = [
  ];
}
