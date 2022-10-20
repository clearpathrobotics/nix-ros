{
  catkin,
  controller_manager,
  diff_drive_controller,
  gazebo_ros,
  gazebo_ros_control,
  joint_state_controller,
  position_controllers,
  robot_state_publisher,
  rqt_robot_steering,
  rviz,
  urdf_tutorial,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdf_sim_tutorial";
  pkgFinal = final.noetic.urdf_sim_tutorial;
  src = srcs.urdf_sim_tutorial.urdf_sim_tutorial;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    controller_manager
    diff_drive_controller
    gazebo_ros
    gazebo_ros_control
    joint_state_controller
    position_controllers
    robot_state_publisher
    rqt_robot_steering
    rviz
    urdf_tutorial
    xacro
  ];

  colconTestDepends = [
  ];
}
