{
  catkin,
  ignition,
  image_transport,
  ros_ign_bridge,
  roscpp,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_ign_image";
  pkgFinal = final.noetic.ros_ign_image;
  src = srcs.ros_ign.ros_ign_image;

  colconBuildDepends = [
    catkin
    ignition.msgs5
    ignition.transport8
    image_transport
    ros_ign_bridge
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    ignition.msgs5
    ignition.transport8
    image_transport
    ros_ign_bridge
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
