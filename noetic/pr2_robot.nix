{
  catkin,
  imu_monitor,
  pr2_bringup,
  pr2_camera_synchronizer,
  pr2_computer_monitor,
  pr2_controller_configuration,
  pr2_ethercat,
  pr2_run_stop_auto_restart,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_robot";
  pkgFinal = final.noetic.pr2_robot;
  src = srcs.pr2_robot.pr2_robot;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    imu_monitor
    pr2_bringup
    pr2_camera_synchronizer
    pr2_computer_monitor
    pr2_controller_configuration
    pr2_ethercat
    pr2_run_stop_auto_restart
  ];

  colconTestDepends = [
  ];
}
