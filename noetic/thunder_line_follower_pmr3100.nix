{
  catkin,
  controller_manager,
  gazebo,
  gazebo_plugins,
  gazebo_ros,
  geometry_msgs,
  joint_state_publisher,
  python3Packages,
  robot_state_publisher,
  roscpp,
  roslaunch,
  rospy,
  velocity_controllers,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "thunder_line_follower_pmr3100";
  pkgFinal = final.noetic.thunder_line_follower_pmr3100;
  src = srcs.thunder_line_follower_pmr3100.thunder_line_follower_pmr3100;

  colconBuildDepends = [
    catkin
    gazebo
    gazebo_plugins
    gazebo_ros
    geometry_msgs
    joint_state_publisher
    robot_state_publisher
    roscpp
    roslaunch
    rospy
    velocity_controllers
  ];

  colconRunDepends = [
    controller_manager
    gazebo
    gazebo_plugins
    gazebo_ros
    geometry_msgs
    joint_state_publisher
    python3Packages.pygame
    robot_state_publisher
    roscpp
    roslaunch
    rospy
    velocity_controllers
    xacro
  ];

  colconTestDepends = [
  ];
}
