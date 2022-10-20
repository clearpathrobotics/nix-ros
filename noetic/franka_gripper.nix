{
  actionlib,
  actionlib_msgs,
  catkin,
  control_msgs,
  libfranka,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "franka_gripper";
  pkgFinal = final.noetic.franka_gripper;
  src = srcs.franka_ros.franka_gripper;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    control_msgs
    libfranka
    message_generation
    roscpp
    sensor_msgs
    xmlrpcpp
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    control_msgs
    libfranka
    message_generation
    message_runtime
    roscpp
    sensor_msgs
    xmlrpcpp
  ];

  colconTestDepends = [
  ];
}
