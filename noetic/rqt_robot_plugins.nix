{
  catkin,
  rqt_moveit,
  rqt_nav_view,
  rqt_pose_view,
  rqt_robot_dashboard,
  rqt_robot_monitor,
  rqt_robot_steering,
  rqt_runtime_monitor,
  rqt_rviz,
  rqt_tf_tree,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_robot_plugins";
  pkgFinal = final.noetic.rqt_robot_plugins;
  src = srcs.rqt_robot_plugins.rqt_robot_plugins;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rqt_moveit
    rqt_nav_view
    rqt_pose_view
    rqt_robot_dashboard
    rqt_robot_monitor
    rqt_robot_steering
    rqt_runtime_monitor
    rqt_rviz
    rqt_tf_tree
  ];

  colconTestDepends = [
  ];
}
