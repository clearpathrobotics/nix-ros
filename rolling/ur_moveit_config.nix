{
  ament_cmake,
  ament_cmake_python,
  launch,
  launch_ros,
  moveit_kinematics,
  moveit_planners_ompl,
  moveit_ros_move_group,
  moveit_ros_visualization,
  moveit_servo,
  moveit_simple_controller_manager,
  rviz2,
  ur_description,
  urdf,
  warehouse_ros_sqlite,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ur_moveit_config";
  pkgFinal = final.rolling.ur_moveit_config;
  src = srcs.ur_robot_driver.ur_moveit_config;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
  ];

  colconRunDepends = [
    launch
    launch_ros
    moveit_kinematics
    moveit_planners_ompl
    moveit_ros_move_group
    moveit_ros_visualization
    moveit_servo
    moveit_simple_controller_manager
    rviz2
    ur_description
    urdf
    warehouse_ros_sqlite
    xacro
  ];

  colconTestDepends = [
  ];
}
