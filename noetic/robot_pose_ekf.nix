{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  rosbag,
  roscpp,
  rostest,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_pose_ekf";
  pkgFinal = final.noetic.robot_pose_ekf;
  src = srcs.robot_pose_ekf.robot_pose_ekf;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
    rosbag
    rostest
  ];
}
