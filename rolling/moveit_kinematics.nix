{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  class_loader,
  eigen,
  launch_param_builder,
  moveit_common,
  moveit_configs_utils,
  moveit_core,
  moveit_msgs,
  moveit_resources_fanuc_description,
  moveit_resources_fanuc_moveit_config,
  moveit_resources_panda_description,
  moveit_resources_panda_moveit_config,
  moveit_ros_planning,
  orocos_kdl_vendor,
  pluginlib,
  python3Packages,
  ros_testing,
  tf2,
  tf2_kdl,
  urdfdom,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_kinematics";
  pkgFinal = final.rolling.moveit_kinematics;
  src = srcs.moveit.moveit_kinematics;

  colconBuildDepends = [
    ament_cmake
    class_loader
    eigen
    moveit_common
    moveit_core
    moveit_msgs
    orocos_kdl_vendor
    pluginlib
    tf2
    tf2_kdl
  ];

  colconRunDepends = [
    class_loader
    eigen
    moveit_common
    moveit_core
    moveit_msgs
    orocos_kdl_vendor
    pluginlib
    python3Packages.lxml
    tf2
    tf2_kdl
    urdfdom
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    launch_param_builder
    moveit_configs_utils
    moveit_resources_fanuc_description
    moveit_resources_fanuc_moveit_config
    moveit_resources_panda_description
    moveit_resources_panda_moveit_config
    moveit_ros_planning
    ros_testing
  ];
}
