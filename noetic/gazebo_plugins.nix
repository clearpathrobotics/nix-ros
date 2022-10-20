{
  angles,
  camera_info_manager,
  catkin,
  cv_bridge,
  diagnostic_updater,
  dynamic_reconfigure,
  gazebo_dev,
  gazebo_msgs,
  gazebo_ros,
  geometry_msgs,
  image_transport,
  message_generation,
  message_runtime,
  nav_msgs,
  nodelet,
  polled_camera,
  rosconsole,
  roscpp,
  rosgraph_msgs,
  rospy,
  rostest,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,
  tf2_ros,
  trajectory_msgs,
  urdf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_plugins";
  pkgFinal = final.noetic.gazebo_plugins;
  src = srcs.gazebo_ros_pkgs.gazebo_plugins;

  colconBuildDepends = [
    angles
    camera_info_manager
    catkin
    cv_bridge
    diagnostic_updater
    dynamic_reconfigure
    gazebo_dev
    gazebo_msgs
    gazebo_ros
    geometry_msgs
    image_transport
    message_generation
    nav_msgs
    nodelet
    polled_camera
    rosconsole
    roscpp
    rosgraph_msgs
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    tf
    tf2_ros
    trajectory_msgs
    urdf
    visualization_msgs
  ];

  colconRunDepends = [
    angles
    camera_info_manager
    cv_bridge
    diagnostic_updater
    dynamic_reconfigure
    gazebo_dev
    gazebo_msgs
    gazebo_ros
    geometry_msgs
    image_transport
    message_runtime
    nav_msgs
    nodelet
    polled_camera
    rosconsole
    roscpp
    rosgraph_msgs
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    tf
    tf2_ros
    trajectory_msgs
    urdf
    visualization_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
