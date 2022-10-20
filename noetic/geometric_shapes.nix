{
  assimp,
  boost,
  catkin,
  console-bridge,
  eigen,
  eigen_stl_containers,
  fcl,
  pkg-config,
  qhull,
  random_numbers,
  resource_retriever,
  rosunit,
  shape_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geometric_shapes";
  pkgFinal = final.noetic.geometric_shapes;
  src = srcs.geometric_shapes.geometric_shapes;

  colconBuildDepends = [
    assimp
    boost
    catkin
    console-bridge
    eigen
    eigen_stl_containers
    fcl
    pkg-config
    qhull
    random_numbers
    resource_retriever
    shape_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    assimp
    boost
    console-bridge
    eigen
    eigen_stl_containers
    fcl
    qhull
    random_numbers
    resource_retriever
    shape_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    rosunit
  ];
}
