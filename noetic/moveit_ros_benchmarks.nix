{
  catkin,
  moveit_ros_planning,
  moveit_ros_warehouse,
  pluginlib,
  roscpp,
  tf2_eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_benchmarks";
  pkgFinal = final.noetic.moveit_ros_benchmarks;
  src = srcs.moveit.moveit_ros_benchmarks;

  colconBuildDepends = [
    catkin
    moveit_ros_planning
    moveit_ros_warehouse
    pluginlib
    roscpp
    tf2_eigen
  ];

  colconRunDepends = [
    moveit_ros_planning
    moveit_ros_warehouse
    pluginlib
    roscpp
    tf2_eigen
  ];

  colconTestDepends = [
  ];
}
