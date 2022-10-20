{
  actionlib,
  actionlib_msgs,
  cartesian_control_msgs,
  cartesian_interface,
  cartesian_trajectory_controller,
  catkin,
  control_msgs,
  controller_interface,
  controller_manager,
  controller_manager_msgs,
  dynamic_reconfigure,
  geometry_msgs,
  hardware_interface,
  joint_state_controller,
  joint_trajectory_controller,
  pluginlib,
  robot_state_publisher,
  ros_control_boilerplate,
  roscpp,
  rospy,
  rostest,
  speed_scaling_interface,
  tf,
  trajectory_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pass_through_controllers";
  pkgFinal = final.noetic.pass_through_controllers;
  src = srcs.pass_through_controllers.pass_through_controllers;

  colconBuildDepends = [
    actionlib
    cartesian_control_msgs
    cartesian_interface
    cartesian_trajectory_controller
    catkin
    control_msgs
    controller_interface
    controller_manager
    dynamic_reconfigure
    geometry_msgs
    hardware_interface
    pluginlib
    roscpp
    speed_scaling_interface
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib
    cartesian_control_msgs
    cartesian_interface
    cartesian_trajectory_controller
    control_msgs
    controller_interface
    controller_manager
    dynamic_reconfigure
    geometry_msgs
    hardware_interface
    pluginlib
    roscpp
    speed_scaling_interface
    trajectory_msgs
  ];

  colconTestDepends = [
    actionlib
    actionlib_msgs
    cartesian_trajectory_controller
    control_msgs
    controller_manager_msgs
    joint_state_controller
    joint_trajectory_controller
    robot_state_publisher
    ros_control_boilerplate
    rospy
    rostest
    tf
    xacro
  ];
}
