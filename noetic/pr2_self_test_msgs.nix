{
  catkin,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_self_test_msgs";
  pkgFinal = final.noetic.pr2_self_test_msgs;
  src = srcs.pr2_self_test.pr2_self_test_msgs;

  colconBuildDepends = [
    catkin
    message_generation
  ];

  colconRunDepends = [
    message_runtime
  ];

  colconTestDepends = [
  ];
}
