{
  catkin,
  cob_default_env_config,
  controller_manager,
  gazebo_msgs,
  gazebo_ros,
  gazebo_ros_control,
  joint_state_controller,
  joint_state_publisher,
  position_controllers,
  robot_state_publisher,
  roslaunch,
  rospy,
  rostest,
  std_msgs,
  tf,
  tf2_ros,
  velocity_controllers,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_gazebo_worlds";
  pkgFinal = final.noetic.cob_gazebo_worlds;
  src = srcs.cob_simulation.cob_gazebo_worlds;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_default_env_config
    controller_manager
    gazebo_msgs
    gazebo_ros
    gazebo_ros_control
    joint_state_controller
    joint_state_publisher
    position_controllers
    robot_state_publisher
    rospy
    std_msgs
    tf
    tf2_ros
    velocity_controllers
    xacro
  ];

  colconTestDepends = [
    cob_default_env_config
    roslaunch
    rostest
  ];
}
