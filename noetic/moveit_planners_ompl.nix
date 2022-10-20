{
  catkin,
  dynamic_reconfigure,
  moveit_core,
  moveit_resources_fanuc_description,
  moveit_resources_panda_description,
  moveit_resources_pr2_description,
  moveit_ros_planning,
  pluginlib,
  rosconsole,
  roscpp,
  rostest,
  rosunit,
  tf2,
  tf2_eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_planners_ompl";
  pkgFinal = final.noetic.moveit_planners_ompl;
  src = srcs.moveit.moveit_planners_ompl;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    moveit_core
    moveit_ros_planning
    pluginlib
    rosconsole
    roscpp
    tf2
  ];

  colconRunDepends = [
    dynamic_reconfigure
    moveit_core
    moveit_ros_planning
    pluginlib
    rosconsole
    roscpp
    tf2
  ];

  colconTestDepends = [
    moveit_resources_fanuc_description
    moveit_resources_panda_description
    moveit_resources_pr2_description
    rostest
    rosunit
    tf2_eigen
  ];
}
