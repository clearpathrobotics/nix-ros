{
  angles,
  catkin,
  control_toolbox,
  controller_manager,
  gazebo_dev,
  gazebo_ros,
  hardware_interface,
  joint_limits_interface,
  pluginlib,
  roscpp,
  std_msgs,
  transmission_interface,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_ros_control";
  pkgFinal = final.noetic.gazebo_ros_control;
  src = srcs.gazebo_ros_pkgs.gazebo_ros_control;

  colconBuildDepends = [
    angles
    catkin
    control_toolbox
    controller_manager
    gazebo_dev
    hardware_interface
    joint_limits_interface
    pluginlib
    roscpp
    std_msgs
    transmission_interface
    urdf
  ];

  colconRunDepends = [
    angles
    control_toolbox
    controller_manager
    gazebo_ros
    hardware_interface
    joint_limits_interface
    pluginlib
    roscpp
    std_msgs
    transmission_interface
    urdf
  ];

  colconTestDepends = [
  ];
}
