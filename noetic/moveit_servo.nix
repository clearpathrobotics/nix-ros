{
  catkin,
  control_msgs,
  control_toolbox,
  geometry_msgs,
  joy_teleop,
  moveit_msgs,
  moveit_resources_panda_moveit_config,
  moveit_ros_planning_interface,
  rosparam_shortcuts,
  rostest,
  sensor_msgs,
  spacenav_node,
  std_msgs,
  std_srvs,
  tf2_eigen,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_servo";
  pkgFinal = final.noetic.moveit_servo;
  src = srcs.moveit.moveit_servo;

  colconBuildDepends = [
    catkin
    control_msgs
    control_toolbox
    geometry_msgs
    moveit_msgs
    moveit_ros_planning_interface
    rosparam_shortcuts
    sensor_msgs
    std_msgs
    std_srvs
    tf2_eigen
    trajectory_msgs
  ];

  colconRunDepends = [
    control_msgs
    control_toolbox
    geometry_msgs
    joy_teleop
    moveit_msgs
    moveit_ros_planning_interface
    rosparam_shortcuts
    sensor_msgs
    spacenav_node
    std_msgs
    std_srvs
    tf2_eigen
    trajectory_msgs
  ];

  colconTestDepends = [
    moveit_resources_panda_moveit_config
    rostest
  ];
}
