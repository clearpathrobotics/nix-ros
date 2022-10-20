{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  object_recognition_msgs,
  octomap_msgs,
  sensor_msgs,
  shape_msgs,
  std_msgs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_msgs";
  pkgFinal = final.noetic.moveit_msgs;
  src = srcs.moveit_msgs.moveit_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    object_recognition_msgs
    octomap_msgs
    sensor_msgs
    shape_msgs
    std_msgs
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_generation
    message_runtime
    object_recognition_msgs
    octomap_msgs
    sensor_msgs
    shape_msgs
    std_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
