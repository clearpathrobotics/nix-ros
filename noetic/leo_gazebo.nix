{
  catkin,
  compressed_image_transport,
  controller_manager,
  diff_drive_controller,
  gazebo_plugins,
  gazebo_ros,
  gazebo_ros_control,
  geometry_msgs,
  joint_state_controller,
  leo_description,
  leo_gazebo_plugins,
  leo_gazebo_worlds,
  nav_msgs,
  robot_state_publisher,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_gazebo";
  pkgFinal = final.noetic.leo_gazebo;
  src = srcs.leo_simulator.leo_gazebo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    compressed_image_transport
    controller_manager
    diff_drive_controller
    gazebo_plugins
    gazebo_ros
    gazebo_ros_control
    geometry_msgs
    joint_state_controller
    leo_description
    leo_gazebo_plugins
    leo_gazebo_worlds
    nav_msgs
    robot_state_publisher
    topic_tools
  ];

  colconTestDepends = [
  ];
}
