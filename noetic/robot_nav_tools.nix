{
  catkin,
  color_util,
  robot_nav_rviz_plugins,
  robot_nav_viz_demos,
  rqt_dwb_plugin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_nav_tools";
  pkgFinal = final.noetic.robot_nav_tools;
  src = srcs.robot_navigation.robot_nav_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    color_util
    robot_nav_rviz_plugins
    robot_nav_viz_demos
    rqt_dwb_plugin
  ];

  colconTestDepends = [
  ];
}
