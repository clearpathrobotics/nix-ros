{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,
  std_srvs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_msgs";
  pkgFinal = final.noetic.gazebo_msgs;
  src = srcs.gazebo_ros_pkgs.gazebo_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    sensor_msgs
    std_msgs
    std_srvs
    trajectory_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    sensor_msgs
    std_msgs
    std_srvs
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
