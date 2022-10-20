{
  angles,
  assimp,
  boost,
  bullet,
  catkin,
  console-bridge,
  eigen,
  eigen_stl_containers,
  fcl,
  geometric_shapes,
  geometry_msgs,
  kdl_parser,
  moveit_msgs,
  moveit_resources_panda_moveit_config,
  moveit_resources_pr2_description,
  octomap_msgs,
  pkg-config,
  pluginlib,
  python3,
  random_numbers,
  rosconsole,
  roslib,
  rostest,
  rostime,
  rosunit,
  sensor_msgs,
  shape_msgs,
  srdfdom,
  std_msgs,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_kdl,
  trajectory_msgs,
  urdf,
  urdfdom,
  urdfdom-headers,
  visualization_msgs,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_core";
  pkgFinal = final.noetic.moveit_core;
  src = srcs.moveit.moveit_core;

  colconBuildDepends = [
    assimp
    boost
    bullet
    catkin
    console-bridge
    eigen
    eigen_stl_containers
    fcl
    geometric_shapes
    geometry_msgs
    kdl_parser
    moveit_msgs
    octomap_msgs
    pkg-config
    pluginlib
    python3
    random_numbers
    rosconsole
    roslib
    rostime
    sensor_msgs
    shape_msgs
    srdfdom
    std_msgs
    tf2_eigen
    tf2_geometry_msgs
    trajectory_msgs
    urdf
    urdfdom
    urdfdom-headers
    visualization_msgs
    xmlrpcpp
  ];

  colconRunDepends = [
    assimp
    boost
    bullet
    console-bridge
    eigen
    eigen_stl_containers
    fcl
    geometric_shapes
    geometry_msgs
    kdl_parser
    moveit_msgs
    octomap_msgs
    pluginlib
    python3
    random_numbers
    rosconsole
    roslib
    rostime
    sensor_msgs
    shape_msgs
    srdfdom
    std_msgs
    tf2_eigen
    tf2_geometry_msgs
    trajectory_msgs
    urdf
    urdfdom
    urdfdom-headers
    visualization_msgs
    xmlrpcpp
  ];

  colconTestDepends = [
    angles
    moveit_resources_panda_moveit_config
    moveit_resources_pr2_description
    rostest
    rosunit
    tf2_kdl
  ];
}
