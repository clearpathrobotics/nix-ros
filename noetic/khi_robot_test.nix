{
  catkin,
  khi_duaro_moveit_config,
  khi_robot_bringup,
  khi_robot_control,
  khi_robot_msgs,
  khi_rs007l_moveit_config,
  khi_rs007n_moveit_config,
  khi_rs013n_moveit_config,
  khi_rs080n_moveit_config,
  moveit_commander,
  rospy,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "khi_robot_test";
  pkgFinal = final.noetic.khi_robot_test;
  src = srcs.khi_robot.khi_robot_test;

  colconBuildDepends = [
    catkin
    rospy
  ];

  colconRunDepends = [
    khi_robot_msgs
    rospy
  ];

  colconTestDepends = [
    khi_duaro_moveit_config
    khi_robot_bringup
    khi_robot_control
    khi_robot_msgs
    khi_rs007l_moveit_config
    khi_rs007n_moveit_config
    khi_rs013n_moveit_config
    khi_rs080n_moveit_config
    moveit_commander
    rostest
  ];
}
