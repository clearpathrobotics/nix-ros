{
  actionlib,
  actionlib_msgs,
  catkin,
  control_msgs,
  industrial_msgs,
  industrial_utils,
  robot_state_publisher,
  roscpp,
  roslaunch,
  rosunit,
  sensor_msgs,
  simple_message,
  std_msgs,
  trajectory_msgs,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "industrial_robot_client";
  pkgFinal = final.noetic.industrial_robot_client;
  src = srcs.industrial_core.industrial_robot_client;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    control_msgs
    industrial_msgs
    industrial_utils
    roscpp
    sensor_msgs
    simple_message
    std_msgs
    trajectory_msgs
    urdf
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    control_msgs
    industrial_msgs
    industrial_utils
    robot_state_publisher
    roscpp
    sensor_msgs
    simple_message
    std_msgs
    trajectory_msgs
    urdf
  ];

  colconTestDepends = [
    roslaunch
    rosunit
  ];
}
