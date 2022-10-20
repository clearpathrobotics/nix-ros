{
  catkin,
  urdfdom-headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdf_parser_plugin";
  pkgFinal = final.noetic.urdf_parser_plugin;
  src = srcs.urdf.urdf_parser_plugin;

  colconBuildDepends = [
    catkin
    urdfdom-headers
  ];

  colconRunDepends = [
    urdfdom-headers
  ];

  colconTestDepends = [
  ];
}
