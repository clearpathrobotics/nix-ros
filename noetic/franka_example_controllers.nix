{
  catkin,
  controller_interface,
  dynamic_reconfigure,
  eigen,
  eigen_conversions,
  franka_control,
  franka_description,
  franka_gripper,
  franka_hw,
  geometry_msgs,
  hardware_interface,
  joint_limits_interface,
  libfranka,
  message_generation,
  message_runtime,
  pluginlib,
  realtime_tools,
  roscpp,
  rospy,
  tf,
  tf_conversions,
  urdf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "franka_example_controllers";
  pkgFinal = final.noetic.franka_example_controllers;
  src = srcs.franka_ros.franka_example_controllers;

  colconBuildDepends = [
    catkin
    controller_interface
    dynamic_reconfigure
    eigen
    eigen_conversions
    franka_gripper
    franka_hw
    geometry_msgs
    hardware_interface
    joint_limits_interface
    libfranka
    message_generation
    pluginlib
    realtime_tools
    roscpp
    tf
    tf_conversions
    urdf
    visualization_msgs
  ];

  colconRunDepends = [
    controller_interface
    dynamic_reconfigure
    eigen_conversions
    franka_control
    franka_description
    franka_gripper
    franka_hw
    geometry_msgs
    hardware_interface
    joint_limits_interface
    libfranka
    message_runtime
    pluginlib
    realtime_tools
    roscpp
    rospy
    tf
    tf_conversions
    urdf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
