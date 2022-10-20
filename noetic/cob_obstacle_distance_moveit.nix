{
  boost,
  catkin,
  cob_control_msgs,
  cob_moveit_bringup,
  cob_moveit_config,
  cob_srvs,
  eigen_conversions,
  fcl,
  geometric_shapes,
  geometry_msgs,
  moveit_core,
  moveit_msgs,
  moveit_ros_perception,
  moveit_ros_planning_interface,
  pkg-config,
  roscpp,
  rospy,
  tf,
  tf2_ros,
  tf_conversions,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_obstacle_distance_moveit";
  pkgFinal = final.noetic.cob_obstacle_distance_moveit;
  src = srcs.cob_manipulation.cob_obstacle_distance_moveit;

  colconBuildDepends = [
    boost
    catkin
    cob_control_msgs
    cob_srvs
    eigen_conversions
    fcl
    geometric_shapes
    geometry_msgs
    moveit_core
    moveit_msgs
    moveit_ros_perception
    moveit_ros_planning_interface
    pkg-config
    roscpp
    tf
    tf2_ros
    tf_conversions
  ];

  colconRunDepends = [
    boost
    cob_control_msgs
    cob_moveit_bringup
    cob_moveit_config
    cob_srvs
    eigen_conversions
    fcl
    geometric_shapes
    geometry_msgs
    moveit_core
    moveit_msgs
    moveit_ros_perception
    moveit_ros_planning_interface
    pkg-config
    roscpp
    rospy
    tf
    tf2_ros
    tf_conversions
  ];

  colconTestDepends = [
  ];
}
