{
  actionlib,
  catkin,
  cmake_modules,
  control_msgs,
  control_toolbox,
  controller_manager,
  gflags,
  hardware_interface,
  joint_limits_interface,
  roscpp,
  rosparam_shortcuts,
  sensor_msgs,
  std_msgs,
  trajectory_msgs,
  transmission_interface,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_control_boilerplate";
  pkgFinal = final.noetic.ros_control_boilerplate;
  src = srcs.ros_control_boilerplate.ros_control_boilerplate;

  colconBuildDepends = [
    actionlib
    catkin
    cmake_modules
    control_msgs
    control_toolbox
    controller_manager
    gflags
    hardware_interface
    joint_limits_interface
    roscpp
    rosparam_shortcuts
    sensor_msgs
    std_msgs
    trajectory_msgs
    transmission_interface
    urdf
  ];

  colconRunDepends = [
    actionlib
    control_msgs
    control_toolbox
    controller_manager
    hardware_interface
    joint_limits_interface
    roscpp
    rosparam_shortcuts
    sensor_msgs
    std_msgs
    trajectory_msgs
    transmission_interface
    urdf
  ];

  colconTestDepends = [
  ];
}
