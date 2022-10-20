{
  ament_cmake,
  ament_cmake_copyright,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_cmake,
  assimp,
  boost,
  console_bridge_vendor,
  eigen,
  eigen3_cmake_module,
  eigen_stl_containers,
  geometry_msgs,
  pkg-config,
  qhull,
  random_numbers,
  rclcpp,
  resource_retriever,
  rosidl_default_generators,
  rosidl_default_runtime,
  shape_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geometric_shapes";
  pkgFinal = final.rolling.geometric_shapes;
  src = srcs.geometric_shapes.geometric_shapes;

  colconBuildDepends = [
    ament_cmake
    assimp
    boost
    console_bridge_vendor
    eigen
    eigen3_cmake_module
    eigen_stl_containers
    geometry_msgs
    pkg-config
    qhull
    random_numbers
    rclcpp
    resource_retriever
    rosidl_default_generators
    shape_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    assimp
    boost
    console_bridge_vendor
    eigen
    eigen3_cmake_module
    eigen_stl_containers
    geometry_msgs
    qhull
    random_numbers
    rclcpp
    resource_retriever
    rosidl_default_runtime
    shape_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_cmake
  ];
}
