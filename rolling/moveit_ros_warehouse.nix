{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  moveit_common,
  moveit_core,
  moveit_ros_planning,
  rclcpp,
  tf2_eigen,
  tf2_ros,
  warehouse_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_warehouse";
  pkgFinal = final.rolling.moveit_ros_warehouse;
  src = srcs.moveit.moveit_ros_warehouse;

  colconBuildDepends = [
    ament_cmake
    moveit_common
    moveit_core
    moveit_ros_planning
    rclcpp
    tf2_eigen
    tf2_ros
    warehouse_ros
  ];

  colconRunDepends = [
    moveit_common
    moveit_core
    moveit_ros_planning
    rclcpp
    tf2_eigen
    tf2_ros
    warehouse_ros
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
