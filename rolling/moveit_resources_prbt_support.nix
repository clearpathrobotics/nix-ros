{
  ament_cmake,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_prbt_support";
  pkgFinal = final.rolling.moveit_resources_prbt_support;
  src = srcs.moveit.moveit_resources_prbt_support;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
  ];
}
