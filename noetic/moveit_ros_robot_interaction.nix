{
  catkin,
  interactive_markers,
  moveit_ros_planning,
  roscpp,
  rosunit,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_robot_interaction";
  pkgFinal = final.noetic.moveit_ros_robot_interaction;
  src = srcs.moveit.moveit_ros_robot_interaction;

  colconBuildDepends = [
    catkin
    interactive_markers
    moveit_ros_planning
    roscpp
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    interactive_markers
    moveit_ros_planning
    roscpp
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    rosunit
  ];
}
