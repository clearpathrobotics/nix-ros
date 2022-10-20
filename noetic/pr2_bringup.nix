{
  catkin,
  diagnostic_aggregator,
  ethercat_trigger_controllers,
  imu_monitor,
  joint_trajectory_action,
  joy,
  microstrain_3dmgx2_imu,
  ocean_battery_driver,
  power_monitor,
  pr2_calibration_controllers,
  pr2_camera_synchronizer,
  pr2_computer_monitor,
  pr2_controller_configuration,
  pr2_controller_manager,
  pr2_dashboard_aggregator,
  pr2_description,
  pr2_ethercat,
  pr2_gripper_action,
  pr2_head_action,
  pr2_machine,
  pr2_power_board,
  pr2_run_stop_auto_restart,
  prosilica_camera,
  robot_mechanism_controllers,
  robot_pose_ekf,
  robot_state_publisher,
  rosbag,
  roslaunch,
  rostest,
  single_joint_position_action,
  sound_play,
  std_srvs,
  stereo_image_proc,
  tf2_ros,
  urg_node,
  wge100_camera,
  wifi_ddwrt,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_bringup";
  pkgFinal = final.noetic.pr2_bringup;
  src = srcs.pr2_robot.pr2_bringup;

  colconBuildDepends = [
    catkin
    roslaunch
    rostest
  ];

  colconRunDepends = [
    diagnostic_aggregator
    ethercat_trigger_controllers
    imu_monitor
    joint_trajectory_action
    joy
    microstrain_3dmgx2_imu
    ocean_battery_driver
    power_monitor
    pr2_calibration_controllers
    pr2_camera_synchronizer
    pr2_computer_monitor
    pr2_controller_configuration
    pr2_controller_manager
    pr2_dashboard_aggregator
    pr2_description
    pr2_ethercat
    pr2_gripper_action
    pr2_head_action
    pr2_machine
    pr2_power_board
    pr2_run_stop_auto_restart
    prosilica_camera
    robot_mechanism_controllers
    robot_pose_ekf
    robot_state_publisher
    rosbag
    single_joint_position_action
    sound_play
    std_srvs
    stereo_image_proc
    tf2_ros
    urg_node
    wge100_camera
    wifi_ddwrt
  ];

  colconTestDepends = [
  ];
}
