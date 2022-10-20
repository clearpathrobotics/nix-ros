{
  catkin,
  cob_base_controller_utils,
  cob_base_velocity_smoother,
  cob_cartesian_controller,
  cob_collision_velocity_filter,
  cob_control_mode_adapter,
  cob_control_msgs,
  cob_footprint_observer,
  cob_frame_tracker,
  cob_hardware_emulation,
  cob_mecanum_controller,
  cob_model_identifier,
  cob_obstacle_distance,
  cob_omni_drive_controller,
  cob_trajectory_controller,
  cob_tricycle_controller,
  cob_twist_controller,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_control";
  pkgFinal = final.noetic.cob_control;
  src = srcs.cob_control.cob_control;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_base_controller_utils
    cob_base_velocity_smoother
    cob_cartesian_controller
    cob_collision_velocity_filter
    cob_control_mode_adapter
    cob_control_msgs
    cob_footprint_observer
    cob_frame_tracker
    cob_hardware_emulation
    cob_mecanum_controller
    cob_model_identifier
    cob_obstacle_distance
    cob_omni_drive_controller
    cob_trajectory_controller
    cob_tricycle_controller
    cob_twist_controller
  ];

  colconTestDepends = [
  ];
}
