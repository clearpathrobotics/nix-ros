{
  catkin,
  cob_default_env_config,
  cob_default_robot_config,
  cob_gazebo,
  cob_gazebo_worlds,
  cob_supported_robots,
  gazebo_ros,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_bringup_sim";
  pkgFinal = final.noetic.cob_bringup_sim;
  src = srcs.cob_simulation.cob_bringup_sim;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_default_env_config
    cob_default_robot_config
    cob_gazebo
    cob_gazebo_worlds
    gazebo_ros
  ];

  colconTestDepends = [
    cob_default_env_config
    cob_supported_robots
    roslaunch
  ];
}
