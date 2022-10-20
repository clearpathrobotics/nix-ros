{
  catkin,
  cmake_modules,
  pluginlib,
  rosconsole_bridge,
  roscpp,
  rostest,
  tinyxml,
  tinyxml-2,
  urdf_parser_plugin,
  urdfdom,
  urdfdom-headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdf";
  pkgFinal = final.noetic.urdf;
  src = srcs.urdf.urdf;

  colconBuildDepends = [
    catkin
    cmake_modules
    pluginlib
    rosconsole_bridge
    roscpp
    tinyxml
    tinyxml-2
    urdf_parser_plugin
    urdfdom
    urdfdom-headers
  ];

  colconRunDepends = [
    pluginlib
    rosconsole_bridge
    roscpp
    tinyxml
    tinyxml-2
    urdfdom
    urdfdom-headers
  ];

  colconTestDepends = [
    rostest
  ];
}
