{
  actionlib,
  actionlib_msgs,
  angles,
  catkin,
  control_msgs,
  geometry_msgs,
  kdl_parser,
  nav_msgs,
  pluginlib,
  robot_controllers_interface,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,
  tf_conversions,
  trajectory_msgs,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_controllers";
  pkgFinal = final.noetic.robot_controllers;
  src = srcs.robot_controllers.robot_controllers;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    angles
    catkin
    control_msgs
    geometry_msgs
    kdl_parser
    nav_msgs
    pluginlib
    robot_controllers_interface
    roscpp
    sensor_msgs
    std_msgs
    tf
    tf_conversions
    trajectory_msgs
    urdf
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    control_msgs
    geometry_msgs
    kdl_parser
    nav_msgs
    pluginlib
    robot_controllers_interface
    roscpp
    sensor_msgs
    std_msgs
    tf
    tf_conversions
    trajectory_msgs
    urdf
  ];

  colconTestDepends = [
  ];
}
