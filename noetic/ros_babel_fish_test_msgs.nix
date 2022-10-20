{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_babel_fish_test_msgs";
  pkgFinal = final.noetic.ros_babel_fish_test_msgs;
  src = srcs.ros_babel_fish.ros_babel_fish_test_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
