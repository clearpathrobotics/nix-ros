{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_panda_description";
  pkgFinal = final.rolling.moveit_resources_panda_description;
  src = srcs.moveit_resources.moveit_resources_panda_description;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
