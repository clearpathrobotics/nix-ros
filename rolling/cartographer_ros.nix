{
  abseil-cpp,
  ament_cmake,
  builtin_interfaces,
  cartographer,
  cartographer_ros_msgs,
  eigen,
  geometry_msgs,
  gflags,
  glog,
  gtest,
  launch,
  nav_msgs,
  pcl,
  pcl_conversions,
  python3Packages,
  rclcpp,
  robot_state_publisher,
  rosbag2_cpp,
  rosbag2_storage,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_eigen,
  tf2_msgs,
  tf2_ros,
  urdf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cartographer_ros";
  pkgFinal = final.rolling.cartographer_ros;
  src = srcs.cartographer_ros.cartographer_ros;

  colconBuildDepends = [
    abseil-cpp
    ament_cmake
    builtin_interfaces
    cartographer
    cartographer_ros_msgs
    eigen
    geometry_msgs
    gflags
    glog
    gtest
    nav_msgs
    pcl
    pcl_conversions
    python3Packages.sphinx
    rclcpp
    rosbag2_cpp
    rosbag2_storage
    sensor_msgs
    std_msgs
    tf2
    tf2_eigen
    tf2_msgs
    tf2_ros
    urdf
    visualization_msgs
  ];

  colconRunDepends = [
    abseil-cpp
    builtin_interfaces
    cartographer
    cartographer_ros_msgs
    eigen
    geometry_msgs
    gflags
    glog
    launch
    nav_msgs
    pcl
    pcl_conversions
    rclcpp
    robot_state_publisher
    rosbag2_cpp
    rosbag2_storage
    sensor_msgs
    std_msgs
    tf2
    tf2_eigen
    tf2_msgs
    tf2_ros
    urdf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
