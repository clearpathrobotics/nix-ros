{
  catkin,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_xacro_tools";
  pkgFinal = final.noetic.hector_xacro_tools;
  src = srcs.hector_models.hector_xacro_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
  ];
}
