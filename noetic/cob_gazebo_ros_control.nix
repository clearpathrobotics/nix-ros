{
  catkin,
  controller_manager,
  gazebo,
  gazebo_ros,
  gazebo_ros_control,
  hardware_interface,
  joint_limits_interface,
  pluginlib,
  roscpp,
  transmission_interface,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_gazebo_ros_control";
  pkgFinal = final.noetic.cob_gazebo_ros_control;
  src = srcs.cob_gazebo_plugins.cob_gazebo_ros_control;

  colconBuildDepends = [
    catkin
    controller_manager
    gazebo
    gazebo_ros
    gazebo_ros_control
    hardware_interface
    joint_limits_interface
    pluginlib
    roscpp
    transmission_interface
    urdf
  ];

  colconRunDepends = [
    controller_manager
    gazebo
    gazebo_ros
    gazebo_ros_control
    hardware_interface
    joint_limits_interface
    pluginlib
    roscpp
    transmission_interface
    urdf
  ];

  colconTestDepends = [
  ];
}
