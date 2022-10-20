{
  catkin,
  fetch_description,
  fetch_ikfast_plugin,
  joint_state_publisher,
  moveit_fake_controller_manager,
  moveit_kinematics,
  moveit_planners_ompl,
  moveit_python,
  moveit_ros_move_group,
  moveit_ros_visualization,
  moveit_simple_controller_manager,
  robot_state_publisher,
  rospy,
  rostest,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_moveit_config";
  pkgFinal = final.noetic.fetch_moveit_config;
  src = srcs.fetch_ros.fetch_moveit_config;

  colconBuildDepends = [
    catkin
    fetch_description
  ];

  colconRunDepends = [
    fetch_description
    fetch_ikfast_plugin
    joint_state_publisher
    moveit_fake_controller_manager
    moveit_kinematics
    moveit_planners_ompl
    moveit_python
    moveit_ros_move_group
    moveit_ros_visualization
    moveit_simple_controller_manager
    robot_state_publisher
    rospy
    xacro
  ];

  colconTestDepends = [
    rostest
  ];
}
