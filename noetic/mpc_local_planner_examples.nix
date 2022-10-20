{
  amcl,
  catkin,
  map_server,
  move_base,
  mpc_local_planner,
  mpc_local_planner_msgs,
  stage_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mpc_local_planner_examples";
  pkgFinal = final.noetic.mpc_local_planner_examples;
  src = srcs.mpc_local_planner.mpc_local_planner_examples;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    amcl
    map_server
    move_base
    mpc_local_planner
    mpc_local_planner_msgs
    stage_ros
  ];

  colconTestDepends = [
  ];
}
