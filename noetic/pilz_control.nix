{
  catkin,
  cmake_modules,
  code_coverage,
  controller_interface,
  controller_manager,
  geometry_msgs,
  joint_trajectory_controller,
  moveit_core,
  moveit_ros_planning,
  pilz_msgs,
  pilz_testutils,
  pilz_utils,
  roscpp,
  roslint,
  rostest,
  rosunit,
  std_srvs,
  tf2,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_control";
  pkgFinal = final.noetic.pilz_control;
  src = srcs.pilz_robots.pilz_control;

  colconBuildDepends = [
    catkin
    cmake_modules
    controller_interface
    controller_manager
    joint_trajectory_controller
    moveit_core
    moveit_ros_planning
    pilz_msgs
    roscpp
    roslint
    std_srvs
  ];

  colconRunDepends = [
    controller_interface
    controller_manager
    joint_trajectory_controller
    moveit_core
    moveit_ros_planning
    pilz_msgs
    roscpp
    std_srvs
  ];

  colconTestDepends = [
    code_coverage
    geometry_msgs
    pilz_testutils
    pilz_utils
    rostest
    rosunit
    tf2
    tf2_geometry_msgs
  ];
}
