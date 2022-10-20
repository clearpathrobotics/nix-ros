{
  ament_cmake,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  angles,
  assimp,
  boost,
  bullet,
  common_interfaces,
  eigen,
  eigen3_cmake_module,
  eigen_stl_containers,
  fcl,
  geometric_shapes,
  geometry_msgs,
  kdl_parser,
  moveit_common,
  moveit_msgs,
  moveit_resources_panda_moveit_config,
  moveit_resources_pr2_description,
  octomap_msgs,
  orocos_kdl_vendor,
  pkg-config,
  pluginlib,
  pybind11_vendor,
  random_numbers,
  rclcpp,
  ruckig,
  sensor_msgs,
  shape_msgs,
  srdfdom,
  std_msgs,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_kdl,
  trajectory_msgs,
  urdf,
  urdfdom,
  urdfdom_headers,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_core";
  pkgFinal = final.rolling.moveit_core;
  src = srcs.moveit.moveit_core;

  colconBuildDepends = [
    ament_cmake
    angles
    assimp
    boost
    bullet
    common_interfaces
    eigen
    eigen3_cmake_module
    eigen_stl_containers
    fcl
    geometric_shapes
    geometry_msgs
    kdl_parser
    moveit_common
    moveit_msgs
    octomap_msgs
    pkg-config
    pluginlib
    pybind11_vendor
    random_numbers
    rclcpp
    ruckig
    sensor_msgs
    shape_msgs
    srdfdom
    std_msgs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    trajectory_msgs
    urdf
    urdfdom
    urdfdom_headers
    visualization_msgs
  ];

  colconRunDepends = [
    angles
    assimp
    boost
    bullet
    common_interfaces
    eigen
    eigen3_cmake_module
    eigen_stl_containers
    fcl
    geometric_shapes
    geometry_msgs
    kdl_parser
    moveit_common
    moveit_msgs
    octomap_msgs
    pluginlib
    pybind11_vendor
    random_numbers
    rclcpp
    ruckig
    sensor_msgs
    shape_msgs
    srdfdom
    std_msgs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    trajectory_msgs
    urdf
    urdfdom
    urdfdom_headers
    visualization_msgs
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_gtest
    ament_index_cpp
    ament_lint_auto
    ament_lint_common
    angles
    moveit_resources_panda_moveit_config
    moveit_resources_pr2_description
    orocos_kdl_vendor
    tf2_kdl
  ];
}
