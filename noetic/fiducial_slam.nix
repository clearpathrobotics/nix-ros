{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  fiducial_msgs,
  image_transport,
  roscpp,
  sensor_msgs,
  tf,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fiducial_slam";
  pkgFinal = final.noetic.fiducial_slam;
  src = srcs.fiducials.fiducial_slam;

  colconBuildDepends = [
    catkin
    cv_bridge
    dynamic_reconfigure
    fiducial_msgs
    image_transport
    roscpp
    sensor_msgs
    tf
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    fiducial_msgs
    image_transport
    roscpp
    sensor_msgs
    tf
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
