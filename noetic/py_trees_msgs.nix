{
  actionlib_msgs,
  catkin,
  dynamic_reconfigure,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "py_trees_msgs";
  pkgFinal = final.noetic.py_trees_msgs;
  src = srcs.py_trees_msgs.py_trees_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    dynamic_reconfigure
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    dynamic_reconfigure
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
