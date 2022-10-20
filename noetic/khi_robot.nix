{
  catkin,
  khi_duaro_description,
  khi_duaro_gazebo,
  khi_duaro_ikfast_plugin,
  khi_duaro_moveit_config,
  khi_robot_bringup,
  khi_robot_control,
  khi_robot_msgs,
  khi_rs007l_moveit_config,
  khi_rs007n_moveit_config,
  khi_rs013n_moveit_config,
  khi_rs025n_moveit_config,
  khi_rs080n_moveit_config,
  khi_rs_description,
  khi_rs_gazebo,
  khi_rs_ikfast_plugin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "khi_robot";
  pkgFinal = final.noetic.khi_robot;
  src = srcs.khi_robot.khi_robot;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    khi_duaro_description
    khi_duaro_gazebo
    khi_duaro_ikfast_plugin
    khi_duaro_moveit_config
    khi_robot_bringup
    khi_robot_control
    khi_robot_msgs
    khi_rs007l_moveit_config
    khi_rs007n_moveit_config
    khi_rs013n_moveit_config
    khi_rs025n_moveit_config
    khi_rs080n_moveit_config
    khi_rs_description
    khi_rs_gazebo
    khi_rs_ikfast_plugin
  ];

  colconTestDepends = [
  ];
}
