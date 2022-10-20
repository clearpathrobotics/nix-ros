{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  eigen3_cmake_module,
  moveit_common,
  moveit_core,
  moveit_msgs,
  rclcpp,
  tf2_eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_industrial_motion_planner_testutils";
  pkgFinal = final.rolling.pilz_industrial_motion_planner_testutils;
  src = srcs.moveit.pilz_industrial_motion_planner_testutils;

  colconBuildDepends = [
    ament_cmake
    eigen3_cmake_module
    moveit_common
    moveit_core
    moveit_msgs
    rclcpp
    tf2_eigen
  ];

  colconRunDepends = [
    eigen3_cmake_module
    moveit_common
    moveit_core
    moveit_msgs
    rclcpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
