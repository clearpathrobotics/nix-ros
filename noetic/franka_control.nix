{
  catkin,
  controller_interface,
  controller_manager,
  franka_description,
  franka_gripper,
  franka_hw,
  franka_msgs,
  geometry_msgs,
  joint_state_publisher,
  joint_trajectory_controller,
  libfranka,
  pluginlib,
  realtime_tools,
  robot_state_publisher,
  roscpp,
  sensor_msgs,
  std_srvs,
  tf,
  tf2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "franka_control";
  pkgFinal = final.noetic.franka_control;
  src = srcs.franka_ros.franka_control;

  colconBuildDepends = [
    catkin
    controller_interface
    controller_manager
    franka_hw
    franka_msgs
    geometry_msgs
    libfranka
    pluginlib
    realtime_tools
    roscpp
    sensor_msgs
    std_srvs
    tf
    tf2_msgs
  ];

  colconRunDepends = [
    controller_interface
    controller_manager
    franka_description
    franka_gripper
    franka_hw
    franka_msgs
    geometry_msgs
    joint_state_publisher
    joint_trajectory_controller
    libfranka
    pluginlib
    realtime_tools
    robot_state_publisher
    roscpp
    sensor_msgs
    std_srvs
    tf
    tf2_msgs
  ];

  colconTestDepends = [
  ];
}
