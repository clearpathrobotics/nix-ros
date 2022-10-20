{
  catkin,
  joint_qualification_controllers,
  pr2_bringup_tests,
  pr2_counterbalance_check,
  pr2_self_test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_self_test";
  pkgFinal = final.noetic.pr2_self_test;
  src = srcs.pr2_self_test.pr2_self_test;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joint_qualification_controllers
    pr2_bringup_tests
    pr2_counterbalance_check
    pr2_self_test_msgs
  ];

  colconTestDepends = [
  ];
}
