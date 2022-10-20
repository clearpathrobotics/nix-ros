{
  catkin,
  clpe,
  clpe_ros_msgs,
  cv_bridge,
  geometry_msgs,
  image_transport,
  roscpp,
  sensor_msgs,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clpe_ros";
  pkgFinal = final.noetic.clpe_ros;
  src = srcs.clpe_ros.clpe_ros;

  colconBuildDepends = [
    catkin
    clpe
    clpe_ros_msgs
    cv_bridge
    geometry_msgs
    image_transport
    roscpp
    sensor_msgs
    tf2
  ];

  colconRunDepends = [
    clpe
    clpe_ros_msgs
    cv_bridge
    geometry_msgs
    image_transport
    roscpp
    sensor_msgs
    tf2
  ];

  colconTestDepends = [
  ];
}
