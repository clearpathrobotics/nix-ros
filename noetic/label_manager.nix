{
  actionlib,
  actionlib_msgs,
  catkin,
  genmsg,
  mesh_msgs,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "label_manager";
  pkgFinal = final.noetic.label_manager;
  src = srcs.mesh_tools.label_manager;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    genmsg
    mesh_msgs
    message_generation
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    genmsg
    mesh_msgs
    message_generation
    message_runtime
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
