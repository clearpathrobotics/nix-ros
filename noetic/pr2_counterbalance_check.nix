{
  actionlib,
  catkin,
  joint_qualification_controllers,
  pr2_controller_configuration,
  pr2_controller_manager,
  pr2_controllers_msgs,
  pr2_self_test_msgs,
  rospy,
  rostest,
  rosunit,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_counterbalance_check";
  pkgFinal = final.noetic.pr2_counterbalance_check;
  src = srcs.pr2_self_test.pr2_counterbalance_check;

  colconBuildDepends = [
    actionlib
    catkin
    joint_qualification_controllers
    pr2_controller_configuration
    pr2_controller_manager
    pr2_controllers_msgs
    pr2_self_test_msgs
    rospy
    rostest
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    joint_qualification_controllers
    pr2_controller_configuration
    pr2_controller_manager
    pr2_controllers_msgs
    pr2_self_test_msgs
    rospy
    std_msgs
  ];

  colconTestDepends = [
    rosunit
  ];
}
