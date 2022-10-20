{
  catkin,
  diff_drive_controller,
  gazebo_plugins,
  gazebo_ros_control,
  hector_gazebo_plugins,
  joint_state_controller,
  joint_state_publisher,
  joint_state_publisher_gui,
  position_controllers,
  robot_state_publisher,
  roslaunch,
  rviz,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_description";
  pkgFinal = final.noetic.mir_description;
  src = srcs.mir_robot.mir_description;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    diff_drive_controller
    gazebo_plugins
    gazebo_ros_control
    hector_gazebo_plugins
    joint_state_controller
    joint_state_publisher
    joint_state_publisher_gui
    position_controllers
    robot_state_publisher
    rviz
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
