{
  catkin,
  geometry_msgs,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,
  uavcan_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "uavcan_communicator";
  pkgFinal = final.noetic.uavcan_communicator;
  src = srcs.uavcan_communicator.uavcan_communicator;

  colconBuildDepends = [
    catkin
    geometry_msgs
    roscpp
    rospy
    sensor_msgs
    std_msgs
    uavcan_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    roscpp
    rospy
    sensor_msgs
    std_msgs
    uavcan_msgs
  ];

  colconTestDepends = [
  ];
}
