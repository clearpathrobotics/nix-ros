{
  camera_info_manager,
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  fiducial_msgs,
  geometry_msgs,
  image_transport,
  python3Packages,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  vision_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "stag_detect";
  pkgFinal = final.noetic.stag_detect;
  src = srcs.fiducials.stag_detect;

  colconBuildDepends = [
    camera_info_manager
    catkin
    cv_bridge
    dynamic_reconfigure
    fiducial_msgs
    geometry_msgs
    image_transport
    python3Packages.cairosvg
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    vision_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    cv_bridge
    dynamic_reconfigure
    fiducial_msgs
    geometry_msgs
    image_transport
    python3Packages.cairosvg
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    vision_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
