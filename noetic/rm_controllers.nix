{
  catkin,
  gpio_controller,
  mimic_joint_controller,
  rm_calibration_controllers,
  rm_chassis_controllers,
  rm_gimbal_controllers,
  rm_orientation_controller,
  rm_shooter_controllers,
  robot_state_controller,
  tof_radar_controller,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_controllers";
  pkgFinal = final.noetic.rm_controllers;
  src = srcs.rm_controllers.rm_controllers;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gpio_controller
    mimic_joint_controller
    rm_calibration_controllers
    rm_chassis_controllers
    rm_gimbal_controllers
    rm_orientation_controller
    rm_shooter_controllers
    robot_state_controller
    tof_radar_controller
  ];

  colconTestDepends = [
  ];
}
