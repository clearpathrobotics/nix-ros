{
  catkin,
  cob_bringup,
  cob_default_robot_config,
  cob_gazebo_ros_control,
  cob_hardware_config,
  cob_script_server,
  cob_supported_robots,
  control_msgs,
  gazebo_plugins,
  gazebo_ros,
  gazebo_ros_control,
  roslaunch,
  rospy,
  rostest,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_gazebo";
  pkgFinal = final.noetic.cob_gazebo;
  src = srcs.cob_simulation.cob_gazebo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_bringup
    cob_default_robot_config
    cob_gazebo_ros_control
    cob_hardware_config
    cob_script_server
    control_msgs
    gazebo_plugins
    gazebo_ros
    gazebo_ros_control
    rospy
    rostest
    trajectory_msgs
  ];

  colconTestDepends = [
    cob_supported_robots
    roslaunch
  ];
}
