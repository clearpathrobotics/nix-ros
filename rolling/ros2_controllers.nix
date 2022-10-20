{
  ament_cmake,
  diff_drive_controller,
  effort_controllers,
  force_torque_sensor_broadcaster,
  forward_command_controller,
  imu_sensor_broadcaster,
  joint_state_broadcaster,
  joint_trajectory_controller,
  position_controllers,
  tricycle_controller,
  velocity_controllers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2_controllers";
  pkgFinal = final.rolling.ros2_controllers;
  src = srcs.ros2_controllers.ros2_controllers;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    diff_drive_controller
    effort_controllers
    force_torque_sensor_broadcaster
    forward_command_controller
    imu_sensor_broadcaster
    joint_state_broadcaster
    joint_trajectory_controller
    position_controllers
    tricycle_controller
    velocity_controllers
  ];

  colconTestDepends = [
  ];
}
