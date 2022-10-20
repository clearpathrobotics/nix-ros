{
  actionlib,
  actionlib_msgs,
  cartesian_interface,
  cartesian_trajectory_interpolation,
  catkin,
  control_msgs,
  controller_interface,
  controller_manager,
  controller_manager_msgs,
  hardware_interface,
  joint_state_controller,
  joint_trajectory_controller,
  kdl_parser,
  pluginlib,
  robot_state_publisher,
  ros_control_boilerplate,
  roscpp,
  rospy,
  rostest,
  speed_scaling_interface,
  trajectory_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cartesian_trajectory_controller";
  pkgFinal = final.noetic.cartesian_trajectory_controller;
  src = srcs.ros_controllers_cartesian.cartesian_trajectory_controller;

  colconBuildDepends = [
    cartesian_interface
    cartesian_trajectory_interpolation
    catkin
    controller_manager
    hardware_interface
    kdl_parser
    pluginlib
    roscpp
    rospy
    speed_scaling_interface
  ];

  colconRunDepends = [
    cartesian_interface
    cartesian_trajectory_interpolation
    controller_interface
    controller_manager
    hardware_interface
    kdl_parser
    pluginlib
    roscpp
    rospy
    speed_scaling_interface
  ];

  colconTestDepends = [
    actionlib
    actionlib_msgs
    control_msgs
    controller_manager_msgs
    joint_state_controller
    joint_trajectory_controller
    robot_state_publisher
    ros_control_boilerplate
    rostest
    trajectory_msgs
    xacro
  ];
}
