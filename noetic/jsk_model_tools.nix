{
  catkin,
  eus_assimp,
  euscollada,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_model_tools";
  pkgFinal = final.noetic.jsk_model_tools;
  src = srcs.jsk_model_tools.jsk_model_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    eus_assimp
    euscollada
  ];

  colconTestDepends = [
  ];
}
