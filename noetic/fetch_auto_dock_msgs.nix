{
  actionlib,
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_auto_dock_msgs";
  pkgFinal = final.noetic.fetch_auto_dock_msgs;
  src = srcs.fetch_msgs.fetch_auto_dock_msgs;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    geometry_msgs
    message_runtime
  ];

  colconTestDepends = [
  ];
}
