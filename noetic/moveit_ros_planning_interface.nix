{
  actionlib,
  catkin,
  eigen,
  eigenpy,
  geometry_msgs,
  moveit_msgs,
  moveit_resources_fanuc_moveit_config,
  moveit_resources_panda_moveit_config,
  moveit_ros_manipulation,
  moveit_ros_move_group,
  moveit_ros_planning,
  moveit_ros_warehouse,
  python3,
  python3Packages,
  rosconsole,
  roscpp,
  rospy,
  rostest,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_planning_interface";
  pkgFinal = final.noetic.moveit_ros_planning_interface;
  src = srcs.moveit.moveit_ros_planning_interface;

  colconBuildDepends = [
    actionlib
    catkin
    eigen
    eigenpy
    geometry_msgs
    moveit_msgs
    moveit_ros_manipulation
    moveit_ros_move_group
    moveit_ros_planning
    moveit_ros_warehouse
    python3
    python3Packages.catkin-pkg
    rosconsole
    roscpp
    rospy
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    actionlib
    eigenpy
    geometry_msgs
    moveit_msgs
    moveit_ros_manipulation
    moveit_ros_move_group
    moveit_ros_planning
    moveit_ros_warehouse
    python3
    rosconsole
    roscpp
    rospy
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    moveit_resources_fanuc_moveit_config
    moveit_resources_panda_moveit_config
    rostest
  ];
}
