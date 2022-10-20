{
  angles,
  assimp_devel,
  catkin,
  class_loader,
  cmake_modules,
  collada-dom,
  collada_parser,
  collada_urdf,
  geometric_shapes,
  git,
  gts,
  kdl_parser,
  mk,
  pluginlib,
  resource_retriever,
  roscpp,
  rostest,
  tf,
  unzip,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "collada_urdf_jsk_patch";
  pkgFinal = final.noetic.collada_urdf_jsk_patch;
  src = srcs.jsk_3rdparty.collada_urdf_jsk_patch;

  colconBuildDepends = [
    angles
    assimp_devel
    catkin
    class_loader
    cmake_modules
    collada-dom
    collada_parser
    collada_urdf
    geometric_shapes
    git
    gts
    kdl_parser
    mk
    pluginlib
    resource_retriever
    roscpp
    rostest
    tf
    unzip
  ];

  colconRunDepends = [
    angles
    assimp_devel
    class_loader
    collada-dom
    collada_parser
    collada_urdf
    geometric_shapes
    gts
    kdl_parser
    pluginlib
    resource_retriever
    roscpp
    tf
    urdf
  ];

  colconTestDepends = [
  ];
}
