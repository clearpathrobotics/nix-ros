{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_pr2_description";
  pkgFinal = final.rolling.moveit_resources_pr2_description;
  src = srcs.moveit_resources.moveit_resources_pr2_description;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
