{
  actionlib,
  catkin,
  cv_bridge,
  diagnostic_msgs,
  ensenso_camera_msgs,
  ensenso_description,
  geometry_msgs,
  image_geometry,
  image_transport,
  nodelet,
  pcl_conversions,
  pcl_ros,
  robot_state_publisher,
  roscpp,
  roslint,
  rospy,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ensenso_camera";
  pkgFinal = final.noetic.ensenso_camera;
  src = srcs.ensenso_driver.ensenso_camera;

  colconBuildDepends = [
    actionlib
    catkin
    cv_bridge
    diagnostic_msgs
    ensenso_camera_msgs
    geometry_msgs
    image_geometry
    image_transport
    nodelet
    pcl_conversions
    pcl_ros
    roscpp
    roslint
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    cv_bridge
    diagnostic_msgs
    ensenso_camera_msgs
    ensenso_description
    geometry_msgs
    image_geometry
    image_transport
    nodelet
    pcl_conversions
    pcl_ros
    robot_state_publisher
    roscpp
    rospy
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
