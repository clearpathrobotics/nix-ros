{
  catkin,
  cmake_modules,
  geometry_msgs,
  graph_msgs,
  moveit_core,
  moveit_ros_planning,
  roscpp,
  roslint,
  rviz_visual_tools,
  std_msgs,
  tf2_eigen,
  tf2_ros,
  trajectory_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_visual_tools";
  pkgFinal = final.noetic.moveit_visual_tools;
  src = srcs.moveit_visual_tools.moveit_visual_tools;

  colconBuildDepends = [
    catkin
    cmake_modules
    geometry_msgs
    graph_msgs
    moveit_core
    moveit_ros_planning
    roscpp
    roslint
    rviz_visual_tools
    std_msgs
    tf2_eigen
    tf2_ros
    trajectory_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    cmake_modules
    geometry_msgs
    graph_msgs
    moveit_core
    moveit_ros_planning
    roscpp
    roslint
    rviz_visual_tools
    std_msgs
    tf2_eigen
    tf2_ros
    trajectory_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
