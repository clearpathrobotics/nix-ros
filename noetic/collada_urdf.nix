{
  angles,
  assimp,
  catkin,
  cmake_modules,
  collada-dom,
  collada_parser,
  eigen,
  geometric_shapes,
  resource_retriever,
  rosconsole,
  urdf,
  urdfdom,
  urdfdom-headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "collada_urdf";
  pkgFinal = final.noetic.collada_urdf;
  src = srcs.collada_urdf.collada_urdf;

  colconBuildDepends = [
    angles
    assimp
    catkin
    cmake_modules
    collada-dom
    collada_parser
    eigen
    geometric_shapes
    resource_retriever
    rosconsole
    urdf
    urdfdom
    urdfdom-headers
  ];

  colconRunDepends = [
    assimp
    collada-dom
    collada_parser
    geometric_shapes
    resource_retriever
    rosconsole
    urdf
    urdfdom
    urdfdom-headers
  ];

  colconTestDepends = [
  ];
}
