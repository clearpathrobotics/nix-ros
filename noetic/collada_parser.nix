{
  catkin,
  class_loader,
  collada-dom,
  rosconsole,
  urdf,
  urdf_parser_plugin,
  urdfdom-headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "collada_parser";
  pkgFinal = final.noetic.collada_parser;
  src = srcs.collada_urdf.collada_parser;

  colconBuildDepends = [
    catkin
    class_loader
    collada-dom
    rosconsole
    urdf
    urdf_parser_plugin
    urdfdom-headers
  ];

  colconRunDepends = [
    class_loader
    collada-dom
    rosconsole
    urdf
    urdf_parser_plugin
  ];

  colconTestDepends = [
  ];
}
