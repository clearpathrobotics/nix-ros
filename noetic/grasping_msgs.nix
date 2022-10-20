{
  actionlib,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  moveit_msgs,
  sensor_msgs,
  shape_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "grasping_msgs";
  pkgFinal = final.noetic.grasping_msgs;
  src = srcs.grasping_msgs.grasping_msgs;

  colconBuildDepends = [
    actionlib
    catkin
    geometry_msgs
    message_generation
    moveit_msgs
    sensor_msgs
    shape_msgs
  ];

  colconRunDepends = [
    actionlib
    geometry_msgs
    message_runtime
    moveit_msgs
    sensor_msgs
    shape_msgs
  ];

  colconTestDepends = [
  ];
}
