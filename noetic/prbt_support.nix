{
  canopen_chain_node,
  canopen_motor_node,
  catkin,
  cmake_modules,
  code_coverage,
  controller_manager,
  eigen,
  joint_state_controller,
  joint_state_publisher,
  moveit_core,
  moveit_ros_planning,
  pilz_control,
  pilz_status_indicator_rqt,
  pilz_testutils,
  pilz_utils,
  prbt_hardware_support,
  robot_state_publisher,
  roscpp,
  roslaunch,
  roslint,
  rosservice,
  rostest,
  rosunit,
  rviz,
  sensor_msgs,
  topic_tools,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "prbt_support";
  pkgFinal = final.noetic.prbt_support;
  src = srcs.pilz_robots.prbt_support;

  colconBuildDepends = [
    canopen_chain_node
    catkin
    pilz_utils
    roscpp
    roslint
    sensor_msgs
  ];

  colconRunDepends = [
    canopen_motor_node
    controller_manager
    joint_state_controller
    pilz_control
    pilz_status_indicator_rqt
    prbt_hardware_support
    robot_state_publisher
    roscpp
    rosservice
    topic_tools
    xacro
  ];

  colconTestDepends = [
    cmake_modules
    code_coverage
    eigen
    joint_state_publisher
    moveit_core
    moveit_ros_planning
    pilz_testutils
    prbt_hardware_support
    roslaunch
    rostest
    rosunit
    rviz
  ];
}
