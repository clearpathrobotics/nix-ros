{
  boost,
  catkin,
  cmake_modules,
  cob_control_msgs,
  cob_frame_tracker,
  cob_script_server,
  cob_srvs,
  control_msgs,
  dynamic_reconfigure,
  eigen,
  eigen_conversions,
  geometry_msgs,
  kdl_conversions,
  kdl_parser,
  nav_msgs,
  pluginlib,
  python3Packages,
  robot_state_publisher,
  roscpp,
  roslint,
  rospy,
  rviz,
  sensor_msgs,
  std_msgs,
  tf,
  tf_conversions,
  topic_tools,
  trajectory_msgs,
  urdf,
  visualization_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_twist_controller";
  pkgFinal = final.noetic.cob_twist_controller;
  src = srcs.cob_control.cob_twist_controller;

  colconBuildDepends = [
    boost
    catkin
    cmake_modules
    cob_control_msgs
    cob_srvs
    control_msgs
    dynamic_reconfigure
    eigen
    eigen_conversions
    geometry_msgs
    kdl_conversions
    kdl_parser
    nav_msgs
    pluginlib
    python3Packages.setuptools
    roscpp
    roslint
    sensor_msgs
    std_msgs
    tf
    tf_conversions
    trajectory_msgs
    urdf
    visualization_msgs
  ];

  colconRunDepends = [
    boost
    cmake_modules
    cob_control_msgs
    cob_frame_tracker
    cob_script_server
    cob_srvs
    control_msgs
    dynamic_reconfigure
    eigen
    eigen_conversions
    geometry_msgs
    kdl_conversions
    kdl_parser
    nav_msgs
    pluginlib
    python3Packages.matplotlib
    python3Packages.six
    robot_state_publisher
    roscpp
    rospy
    rviz
    sensor_msgs
    std_msgs
    tf
    tf_conversions
    topic_tools
    trajectory_msgs
    urdf
    visualization_msgs
    xacro
  ];

  colconTestDepends = [
  ];
}
