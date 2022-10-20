{
  assimp,
  boost,
  catkin,
  cob_control_msgs,
  cob_srvs,
  dynamic_reconfigure,
  eigen,
  eigen_conversions,
  fcl,
  geometry_msgs,
  interactive_markers,
  joint_state_publisher,
  kdl_conversions,
  kdl_parser,
  moveit_msgs,
  pkg-config,
  robot_state_publisher,
  roscpp,
  roslib,
  roslint,
  rospy,
  rviz,
  sensor_msgs,
  shape_msgs,
  std_msgs,
  tf,
  tf_conversions,
  urdf,
  visualization_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_obstacle_distance";
  pkgFinal = final.noetic.cob_obstacle_distance;
  src = srcs.cob_control.cob_obstacle_distance;

  colconBuildDepends = [
    assimp
    boost
    catkin
    cob_control_msgs
    cob_srvs
    dynamic_reconfigure
    eigen
    eigen_conversions
    fcl
    geometry_msgs
    kdl_conversions
    kdl_parser
    moveit_msgs
    pkg-config
    roscpp
    roslib
    roslint
    sensor_msgs
    shape_msgs
    std_msgs
    tf
    tf_conversions
    urdf
    visualization_msgs
  ];

  colconRunDepends = [
    assimp
    boost
    cob_control_msgs
    cob_srvs
    dynamic_reconfigure
    eigen
    eigen_conversions
    fcl
    geometry_msgs
    interactive_markers
    joint_state_publisher
    kdl_conversions
    kdl_parser
    moveit_msgs
    pkg-config
    robot_state_publisher
    roscpp
    roslib
    roslint
    rospy
    rviz
    sensor_msgs
    shape_msgs
    std_msgs
    tf
    tf_conversions
    urdf
    visualization_msgs
    xacro
  ];

  colconTestDepends = [
  ];
}
