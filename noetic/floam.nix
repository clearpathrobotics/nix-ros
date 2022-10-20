{
  catkin,
  ceres-solver,
  eigen,
  eigen_conversions,
  geometry_msgs,
  hector_trajectory_server,
  nav_msgs,
  nodelet,
  pcl,
  pcl_ros,
  rosbag,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "floam";
  pkgFinal = final.noetic.floam;
  src = srcs.floam.floam;

  colconBuildDepends = [
    catkin
    ceres-solver
    eigen
    eigen_conversions
    geometry_msgs
    hector_trajectory_server
    nav_msgs
    nodelet
    pcl
    pcl_ros
    rosbag
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    ceres-solver
    eigen
    eigen_conversions
    geometry_msgs
    hector_trajectory_server
    nav_msgs
    nodelet
    pcl
    pcl_ros
    rosbag
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
  ];

  colconTestDepends = [
  ];
}
