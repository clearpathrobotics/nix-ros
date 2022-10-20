{
  catkin,
  geometry_msgs,
  hector_pose_estimation_core,
  message_filters,
  nav_msgs,
  nodelet,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_pose_estimation";
  pkgFinal = final.noetic.hector_pose_estimation;
  src = srcs.hector_localization.hector_pose_estimation;

  colconBuildDepends = [
    catkin
    geometry_msgs
    hector_pose_estimation_core
    message_filters
    nav_msgs
    nodelet
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    hector_pose_estimation_core
    message_filters
    nav_msgs
    nodelet
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
