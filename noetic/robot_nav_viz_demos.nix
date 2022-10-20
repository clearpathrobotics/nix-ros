{
  angles,
  catkin,
  color_util,
  geometry_msgs,
  nav_2d_msgs,
  nav_2d_utils,
  nav_grid,
  nav_grid_iterators,
  nav_grid_pub_sub,
  pluginlib,
  robot_nav_rviz_plugins,
  rosbag,
  roscpp,
  roslaunch,
  roslint,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_nav_viz_demos";
  pkgFinal = final.noetic.robot_nav_viz_demos;
  src = srcs.robot_navigation.robot_nav_viz_demos;

  colconBuildDepends = [
    angles
    catkin
    color_util
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_grid
    nav_grid_iterators
    nav_grid_pub_sub
    pluginlib
    robot_nav_rviz_plugins
    rosbag
    roscpp
    rviz
  ];

  colconRunDepends = [
    angles
    color_util
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_grid
    nav_grid_iterators
    nav_grid_pub_sub
    pluginlib
    robot_nav_rviz_plugins
    rosbag
    roscpp
    rviz
  ];

  colconTestDepends = [
    roslaunch
    roslint
  ];
}
