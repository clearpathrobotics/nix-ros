{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "ros2_controllers";
    rev = "5c0cb9210b2230347af12bbe2690032f6942435d";
    hash = "sha256-aGnST96asWEufeXexXz9TMv0zg66BhauJn+tE6JvSAA=";
    name = "ros-controls-ros2_controllers-5c0cb9210b2230347af12bbe2690032f6942435d";
  });
in
{
  admittance_controller = pkg "sha256-hFvfwK2WQPjnqF41G0Oyb6ilnJV0V1iJDeStcKuUklw=" "admittance_controller";
  diff_drive_controller = pkg "sha256-elDOPvfpyVEdKCPpub6LOJlNTSo3zhb4E5Q5GqZKyOo=" "diff_drive_controller";
  effort_controllers = pkg "sha256-BtM+BhJWtqZk36wuRiW5cSS34tzmlRcvHERapILAftk=" "effort_controllers";
  force_torque_sensor_broadcaster = pkg "sha256-Cf7lpNWo9DWVV4ys73m8URvKgOIUjD7fmc3cfOvB0y0=" "force_torque_sensor_broadcaster";
  forward_command_controller = pkg "sha256-VNERmumBjbmjFVlhueIK5LFdiXyWaEpe2A0ZABCuMKs=" "forward_command_controller";
  gripper_controllers = pkg "sha256-yEULo+IBpUcOhc2jCxSAmhOF4Q8w8cb5FWjewyEml0M=" "gripper_controllers";
  imu_sensor_broadcaster = pkg "sha256-NnTuCzs2movbBNqnDI6rqL9r9ueaaDJZdv9onY97hYA=" "imu_sensor_broadcaster";
  joint_state_broadcaster = pkg "sha256-oWUZwZDLtMFrWcqBAG8W1xxkvDE2lWGB0HoYQmma1Co=" "joint_state_broadcaster";
  joint_trajectory_controller = pkg "sha256-2XEahGH4vm5l4bI1SvAeRNQhFAYYGfKJdx2XrPRfvms=" "joint_trajectory_controller";
  position_controllers = pkg "sha256-BxLl/PJMcv27DdBYU8uTVtXmlk/AqZW8c04+ncsI7M0=" "position_controllers";
  ros2_controllers = pkg "sha256-Gnfwj3peOdlvwULdW2FoNhGyPI7/t8Hq/YA6/a/2ZXs=" "ros2_controllers";
  ros2_controllers_test_nodes = pkg "sha256-e3uky2ZxGCvbc0873f5s+CxD3qcpXl97W3xGWiuXLKo=" "ros2_controllers_test_nodes";
  rqt_joint_trajectory_controller = pkg "sha256-snG5Q7GCeScw14aSxgHai96SI5a3cB6zRZ7cpKi+Fhk=" "rqt_joint_trajectory_controller";
  tricycle_controller = pkg "sha256-BnD8vpBcnPE8FOkvgrGFMNhlq79/OgZV+PAUqwoR8CE=" "tricycle_controller";
  velocity_controllers = pkg "sha256-vWYRoH59+NNYUYIOaqzZxXijVUK2/nigiDg2LG/o4b8=" "velocity_controllers";
}
