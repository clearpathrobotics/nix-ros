{
  catkin,
  diagnostic_aggregator,
  fingertip_pressure,
  gazebo,
  gazebo_plugins,
  gazebo_ros,
  geometry_msgs,
  image_proc,
  joint_trajectory_action,
  pr2_controller_configuration_gazebo,
  pr2_controller_manager,
  pr2_dashboard_aggregator,
  pr2_description,
  pr2_gazebo_plugins,
  pr2_gripper_action,
  pr2_head_action,
  pr2_machine,
  pr2_mechanism_controllers,
  pr2_msgs,
  pr2_tuckarm,
  robot_mechanism_controllers,
  robot_pose_ekf,
  robot_state_publisher,
  rospy,
  rostest,
  rostopic,
  single_joint_position_action,
  std_msgs,
  stereo_image_proc,
  tf2_ros,
  topic_tools,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_gazebo";
  pkgFinal = final.noetic.pr2_gazebo;
  src = srcs.pr2_simulator.pr2_gazebo;

  colconBuildDepends = [
    catkin
    gazebo
    gazebo_plugins
    pr2_gazebo_plugins
  ];

  colconRunDepends = [
    diagnostic_aggregator
    fingertip_pressure
    gazebo
    gazebo_plugins
    gazebo_ros
    geometry_msgs
    image_proc
    joint_trajectory_action
    pr2_controller_configuration_gazebo
    pr2_controller_manager
    pr2_dashboard_aggregator
    pr2_description
    pr2_gazebo_plugins
    pr2_gripper_action
    pr2_head_action
    pr2_mechanism_controllers
    pr2_msgs
    robot_mechanism_controllers
    robot_pose_ekf
    robot_state_publisher
    rospy
    rostopic
    single_joint_position_action
    std_msgs
    stereo_image_proc
    tf2_ros
    topic_tools
    xacro
  ];

  colconTestDepends = [
    pr2_machine
    pr2_tuckarm
    rostest
  ];
}
