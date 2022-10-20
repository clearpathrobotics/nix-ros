{
  catkin,
  eigen_conversions,
  moveit_core,
  moveit_resources_fanuc_moveit_config,
  moveit_ros_planning,
  opw_kinematics,
  pluginlib,
  roscpp,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_opw_kinematics_plugin";
  pkgFinal = final.noetic.moveit_opw_kinematics_plugin;
  src = srcs.moveit_opw_kinematics_plugin.moveit_opw_kinematics_plugin;

  colconBuildDepends = [
    catkin
    eigen_conversions
    moveit_core
    opw_kinematics
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    moveit_core
    pluginlib
    roscpp
  ];

  colconTestDepends = [
    moveit_resources_fanuc_moveit_config
    moveit_ros_planning
    rostest
  ];
}
