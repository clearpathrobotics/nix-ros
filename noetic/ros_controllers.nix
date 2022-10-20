{
  ackermann_steering_controller,
  catkin,
  diff_drive_controller,
  effort_controllers,
  force_torque_sensor_controller,
  forward_command_controller,
  gripper_action_controller,
  imu_sensor_controller,
  joint_state_controller,
  joint_trajectory_controller,
  position_controllers,
  velocity_controllers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_controllers";
  pkgFinal = final.noetic.ros_controllers;
  src = srcs.ros_controllers.ros_controllers;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ackermann_steering_controller
    diff_drive_controller
    effort_controllers
    force_torque_sensor_controller
    forward_command_controller
    gripper_action_controller
    imu_sensor_controller
    joint_state_controller
    joint_trajectory_controller
    position_controllers
    velocity_controllers
  ];

  colconTestDepends = [
  ];
}
