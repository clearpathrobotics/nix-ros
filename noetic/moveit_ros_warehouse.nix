{
  catkin,
  moveit_ros_planning,
  rosconsole,
  roscpp,
  tf2_eigen,
  tf2_ros,
  warehouse_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_warehouse";
  pkgFinal = final.noetic.moveit_ros_warehouse;
  src = srcs.moveit.moveit_ros_warehouse;

  colconBuildDepends = [
    catkin
    moveit_ros_planning
    rosconsole
    roscpp
    tf2_eigen
    tf2_ros
    warehouse_ros
  ];

  colconRunDepends = [
    moveit_ros_planning
    rosconsole
    roscpp
    tf2_eigen
    tf2_ros
    warehouse_ros
  ];

  colconTestDepends = [
  ];
}
