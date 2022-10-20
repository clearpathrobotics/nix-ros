{
  actionlib,
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mongodb_store_msgs";
  pkgFinal = final.noetic.mongodb_store_msgs;
  src = srcs.mongodb_store.mongodb_store_msgs;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    message_generation
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    message_generation
    message_runtime
  ];

  colconTestDepends = [
  ];
}
