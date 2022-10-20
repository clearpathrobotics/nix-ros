{
  catkin,
  cob_calibration_data,
  cob_description,
  cob_omni_drive_controller,
  cob_supported_robots,
  costmap_2d,
  diagnostic_aggregator,
  joint_state_controller,
  joint_state_publisher,
  joint_state_publisher_gui,
  joint_trajectory_controller,
  laser_filters,
  position_controllers,
  raw_description,
  robot_state_publisher,
  roslaunch,
  rostest,
  rviz,
  velocity_controllers,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_hardware_config";
  pkgFinal = final.noetic.cob_hardware_config;
  src = srcs.cob_robots.cob_hardware_config;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_calibration_data
    cob_description
    cob_omni_drive_controller
    costmap_2d
    diagnostic_aggregator
    joint_state_controller
    joint_state_publisher
    joint_state_publisher_gui
    joint_trajectory_controller
    laser_filters
    position_controllers
    raw_description
    robot_state_publisher
    rviz
    velocity_controllers
    xacro
  ];

  colconTestDepends = [
    cob_supported_robots
    roslaunch
    rostest
  ];
}
