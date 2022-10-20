{
  assimp_devel,
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "collada_tools";
  pkgFinal = final.noetic.collada_tools;
  src = srcs.jsk_model_tools.collada_tools;

  colconBuildDepends = [
    assimp_devel
    catkin
  ];

  colconRunDepends = [
    assimp_devel
    catkin
  ];

  colconTestDepends = [
  ];
}
