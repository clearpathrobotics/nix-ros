{
  actionlib,
  camera_calibration_parsers,
  catkin,
  ceres-solver,
  code_coverage,
  control_msgs,
  cv_bridge,
  eigen,
  geometric_shapes,
  geometry_msgs,
  gflags,
  kdl_parser,
  moveit_msgs,
  nav_msgs,
  pluginlib,
  protobuf,
  robot_calibration_msgs,
  rosbag,
  roscpp,
  sensor_msgs,
  std_msgs,
  suitesparse,
  tf,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_calibration";
  pkgFinal = final.noetic.robot_calibration;
  src = srcs.robot_calibration.robot_calibration;

  colconBuildDepends = [
    actionlib
    camera_calibration_parsers
    catkin
    ceres-solver
    control_msgs
    cv_bridge
    eigen
    geometric_shapes
    geometry_msgs
    gflags
    kdl_parser
    moveit_msgs
    nav_msgs
    pluginlib
    protobuf
    robot_calibration_msgs
    rosbag
    roscpp
    sensor_msgs
    std_msgs
    suitesparse
    tf
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    camera_calibration_parsers
    ceres-solver
    control_msgs
    cv_bridge
    geometric_shapes
    geometry_msgs
    gflags
    kdl_parser
    moveit_msgs
    nav_msgs
    pluginlib
    protobuf
    robot_calibration_msgs
    rosbag
    roscpp
    sensor_msgs
    std_msgs
    suitesparse
    tf
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
    code_coverage
  ];
}
