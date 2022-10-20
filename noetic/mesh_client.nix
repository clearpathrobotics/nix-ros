{
  catkin,
  curl,
  eigen,
  jsoncpp,
  lvr2,
  pkg-config,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mesh_client";
  pkgFinal = final.noetic.mesh_client;
  src = srcs.mesh_navigation.mesh_client;

  colconBuildDepends = [
    catkin
    curl
    eigen
    jsoncpp
    lvr2
    pkg-config
    roscpp
  ];

  colconRunDepends = [
    curl
    eigen
    jsoncpp
    lvr2
    roscpp
  ];

  colconTestDepends = [
  ];
}
