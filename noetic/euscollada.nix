{
  assimp_devel,
  catkin,
  cmake_modules,
  collada-dom,
  collada_parser,
  collada_urdf,
  libyamlcpp,
  mk,
  openhrp3,
  pr2_description,
  qhull,
  resource_retriever,
  rosboost_cfg,
  rosbuild,
  roscpp,
  roseus,
  rospack,
  rostest,
  tf,
  urdf,
  urdfdom,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "euscollada";
  pkgFinal = final.noetic.euscollada;
  src = srcs.jsk_model_tools.euscollada;

  colconBuildDepends = [
    assimp_devel
    catkin
    cmake_modules
    collada-dom
    collada_parser
    collada_urdf
    libyamlcpp
    mk
    qhull
    resource_retriever
    rosboost_cfg
    rosbuild
    roscpp
    rospack
    rostest
    tf
    urdf
    urdfdom
  ];

  colconRunDepends = [
    assimp_devel
    collada-dom
    collada_parser
    collada_urdf
    libyamlcpp
    qhull
    resource_retriever
    roscpp
    rospack
    rostest
    tf
    urdf
    urdfdom
  ];

  colconTestDepends = [
    openhrp3
    pr2_description
    roseus
  ];
}
