{
  actionlib,
  angles,
  boost,
  catkin,
  code_coverage,
  control_msgs,
  control_toolbox,
  controller_interface,
  controller_manager,
  hardware_interface,
  pluginlib,
  realtime_tools,
  roscpp,
  rostest,
  std_msgs,
  trajectory_msgs,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_trajectory_controller";
  pkgFinal = final.noetic.joint_trajectory_controller;
  src = srcs.ros_controllers.joint_trajectory_controller;

  colconBuildDepends = [
    actionlib
    angles
    boost
    catkin
    control_msgs
    control_toolbox
    controller_interface
    hardware_interface
    pluginlib
    realtime_tools
    roscpp
    trajectory_msgs
    urdf
  ];

  colconRunDepends = [
    actionlib
    angles
    boost
    control_msgs
    control_toolbox
    controller_interface
    hardware_interface
    realtime_tools
    roscpp
    trajectory_msgs
    urdf
  ];

  colconTestDepends = [
    code_coverage
    controller_manager
    rostest
    std_msgs
    xacro
  ];
}
