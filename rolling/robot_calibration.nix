{
  ament_cmake,
  ament_cmake_gtest,
  boost,
  camera_calibration_parsers,
  ceres-solver,
  control_msgs,
  cv_bridge,
  eigen,
  geometric_shapes,
  geometry_msgs,
  gflags,
  kdl_parser,
  launch,
  launch_ros,
  launch_testing,
  libyamlcpp,
  moveit_msgs,
  nav_msgs,
  orocos-kdl,
  pluginlib,
  protobuf,
  rclcpp,
  rclcpp_action,
  robot_calibration_msgs,
  rosbag2_cpp,
  sensor_msgs,
  std_msgs,
  suitesparse,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_calibration";
  pkgFinal = final.rolling.robot_calibration;
  src = srcs.robot_calibration.robot_calibration;

  colconBuildDepends = [
    ament_cmake
    boost
    camera_calibration_parsers
    ceres-solver
    control_msgs
    cv_bridge
    eigen
    geometric_shapes
    geometry_msgs
    gflags
    kdl_parser
    libyamlcpp
    moveit_msgs
    nav_msgs
    orocos-kdl
    pluginlib
    protobuf
    rclcpp
    rclcpp_action
    robot_calibration_msgs
    rosbag2_cpp
    sensor_msgs
    std_msgs
    suitesparse
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    camera_calibration_parsers
    ceres-solver
    control_msgs
    cv_bridge
    geometric_shapes
    geometry_msgs
    gflags
    kdl_parser
    libyamlcpp
    moveit_msgs
    nav_msgs
    orocos-kdl
    pluginlib
    protobuf
    rclcpp
    rclcpp_action
    robot_calibration_msgs
    rosbag2_cpp
    sensor_msgs
    std_msgs
    suitesparse
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    launch
    launch_ros
    launch_testing
  ];
}
