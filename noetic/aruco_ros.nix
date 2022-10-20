{
  aruco,
  aruco_msgs,
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  geometry_msgs,
  image_transport,
  roscpp,
  sensor_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "aruco_ros";
  pkgFinal = final.noetic.aruco_ros;
  src = srcs.aruco_ros.aruco_ros;

  colconBuildDepends = [
    aruco
    aruco_msgs
    catkin
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    image_transport
    roscpp
    sensor_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    aruco
    aruco_msgs
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    image_transport
    roscpp
    sensor_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
