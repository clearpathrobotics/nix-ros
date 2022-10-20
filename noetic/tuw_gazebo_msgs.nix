{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,
  std_srvs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_gazebo_msgs";
  pkgFinal = final.noetic.tuw_gazebo_msgs;
  src = srcs.tuw_msgs.tuw_gazebo_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    roscpp
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    trajectory_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    roscpp
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
