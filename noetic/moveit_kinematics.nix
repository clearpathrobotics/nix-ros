{
  catkin,
  eigen,
  moveit_core,
  moveit_resources_fanuc_description,
  moveit_resources_fanuc_moveit_config,
  moveit_resources_panda_description,
  moveit_resources_panda_moveit_config,
  moveit_ros_planning,
  pluginlib,
  python3Packages,
  roscpp,
  rostest,
  tf2,
  tf2_kdl,
  urdfdom,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_kinematics";
  pkgFinal = final.noetic.moveit_kinematics;
  src = srcs.moveit.moveit_kinematics;

  colconBuildDepends = [
    catkin
    eigen
    moveit_core
    pluginlib
    roscpp
    tf2
    tf2_kdl
  ];

  colconRunDepends = [
    eigen
    moveit_core
    pluginlib
    python3Packages.lxml
    python3Packages.pyyaml
    roscpp
    tf2
    tf2_kdl
    urdfdom
  ];

  colconTestDepends = [
    moveit_resources_fanuc_description
    moveit_resources_fanuc_moveit_config
    moveit_resources_panda_description
    moveit_resources_panda_moveit_config
    moveit_ros_planning
    rostest
    xmlrpcpp
  ];
}
