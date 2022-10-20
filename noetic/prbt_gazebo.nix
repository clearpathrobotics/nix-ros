{
  actionlib,
  catkin,
  gazebo_ros,
  gazebo_ros_control,
  prbt_moveit_config,
  prbt_support,
  roscpp,
  roslaunch,
  rostest,
  trajectory_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "prbt_gazebo";
  pkgFinal = final.noetic.prbt_gazebo;
  src = srcs.pilz_robots.prbt_gazebo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_ros
    gazebo_ros_control
    prbt_moveit_config
    prbt_support
    roslaunch
    xacro
  ];

  colconTestDepends = [
    actionlib
    roscpp
    rostest
    trajectory_msgs
  ];
}
