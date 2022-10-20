{
  catkin,
  tuw_multi_robot_ctrl,
  tuw_multi_robot_demo,
  tuw_multi_robot_goal_generator,
  tuw_multi_robot_local_behavior_controller,
  tuw_multi_robot_msgs,
  tuw_multi_robot_router,
  tuw_multi_robot_rviz,
  tuw_voronoi_graph,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_multi_robot";
  pkgFinal = final.noetic.tuw_multi_robot;
  src = srcs.tuw_multi_robot.tuw_multi_robot;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    tuw_multi_robot_ctrl
    tuw_multi_robot_demo
    tuw_multi_robot_goal_generator
    tuw_multi_robot_local_behavior_controller
    tuw_multi_robot_msgs
    tuw_multi_robot_router
    tuw_multi_robot_rviz
    tuw_voronoi_graph
  ];

  colconTestDepends = [
  ];
}
