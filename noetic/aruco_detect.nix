{
  catkin,
  compressed_depth_image_transport,
  compressed_image_transport,
  cv_bridge,
  dynamic_reconfigure,
  fiducial_msgs,
  image_transport,
  python3Packages,
  roscpp,
  sensor_msgs,
  tf,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  theora_image_transport,
  vision_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "aruco_detect";
  pkgFinal = final.noetic.aruco_detect;
  src = srcs.fiducials.aruco_detect;

  colconBuildDepends = [
    catkin
    compressed_depth_image_transport
    compressed_image_transport
    cv_bridge
    dynamic_reconfigure
    fiducial_msgs
    image_transport
    python3Packages.cairosvg
    python3Packages.joblib
    roscpp
    sensor_msgs
    tf
    tf2
    tf2_geometry_msgs
    tf2_ros
    theora_image_transport
    vision_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    compressed_depth_image_transport
    compressed_image_transport
    cv_bridge
    dynamic_reconfigure
    fiducial_msgs
    image_transport
    python3Packages.cairosvg
    python3Packages.joblib
    roscpp
    sensor_msgs
    tf
    tf2
    tf2_geometry_msgs
    tf2_ros
    theora_image_transport
    vision_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
