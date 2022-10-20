{
  actionlib,
  actionlib_msgs,
  catkin,
  combined_robot_hw,
  controller_interface,
  franka_description,
  franka_msgs,
  gtest,
  hardware_interface,
  joint_limits_interface,
  libfranka,
  message_generation,
  pluginlib,
  roscpp,
  rostest,
  std_srvs,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "franka_hw";
  pkgFinal = final.noetic.franka_hw;
  src = srcs.franka_ros.franka_hw;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    combined_robot_hw
    controller_interface
    franka_msgs
    hardware_interface
    joint_limits_interface
    libfranka
    message_generation
    pluginlib
    roscpp
    std_srvs
    urdf
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    combined_robot_hw
    controller_interface
    franka_msgs
    hardware_interface
    joint_limits_interface
    libfranka
    pluginlib
    roscpp
    std_srvs
    urdf
  ];

  colconTestDepends = [
    franka_description
    gtest
    rostest
  ];
}
