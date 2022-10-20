{
  catkin,
  effort_controllers,
  ign_ros_control,
  joint_state_controller,
  joint_state_publisher,
  position_controllers,
  python3Packages,
  ros_ign_gazebo,
  velocity_controllers,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ign_ros_control_demos";
  pkgFinal = final.noetic.ign_ros_control_demos;
  src = srcs.ign_ros_control.ign_ros_control_demos;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    effort_controllers
    ign_ros_control
    joint_state_controller
    joint_state_publisher
    position_controllers
    ros_ign_gazebo
    velocity_controllers
    xacro
  ];

  colconTestDepends = [
  ];
}
