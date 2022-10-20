{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "ros_controllers";
    rev = "252d6584b17ae88e614a6c9cd30ba76ef258a193";
    hash = "sha256-AHgjVX/T4ZsYAweD/u6GDgGrZNK+VJgyFYfzo5qFvvw=";
    name = "ros-controls-ros_controllers-252d6584b17ae88e614a6c9cd30ba76ef258a193";
  });
in
{
  ackermann_steering_controller = pkg "sha256-PoWibPJveBOlRitwtPBxpMPe8VlwG2wGelv+0UYFI5c=" "ackermann_steering_controller";
  diff_drive_controller = pkg "sha256-9YwOaRs+I1LsfJF7qDfhe7p+Fz9f6gu+7Bf0EoHtWdg=" "diff_drive_controller";
  effort_controllers = pkg "sha256-vPm6S8MmhB1kJqY1KPsZHyUvVNZ+1DFB9DAjn1s1GM4=" "effort_controllers";
  force_torque_sensor_controller = pkg "sha256-mUzU73UZxpgJKZrapZgfyLioDC/8SARETltcz7XOJKc=" "force_torque_sensor_controller";
  forward_command_controller = pkg "sha256-gLd5wgmE0F78WRFN2G7Z0y8lGQQl5zr3SUvUj8Hcsu4=" "forward_command_controller";
  four_wheel_steering_controller = pkg "sha256-L7Vp04WMIPFvaQ5E0XYCMZzZpWaDbiYVQNvkwJoKYbM=" "four_wheel_steering_controller";
  gripper_action_controller = pkg "sha256-6c9kXnZ0MuVMCeP05Iji2t/LDEGTv1sPYg833nXymEo=" "gripper_action_controller";
  imu_sensor_controller = pkg "sha256-OxOZuDMEZUH45gpAL9AafL+8k/4YLDeLU5sDmqrZDNU=" "imu_sensor_controller";
  joint_state_controller = pkg "sha256-57Mrpy2rqURbcMsOFD4HZFryFiUUpu/w8nO7xRVVFtM=" "joint_state_controller";
  joint_trajectory_controller = pkg "sha256-WOMSi1FEQAGRnbW1E1pBlSed3pc/NCO29pjjcRqNX5A=" "joint_trajectory_controller";
  position_controllers = pkg "sha256-MLScovh/LbsYqoIhxNPbhmi6iFkRsdBbF7Er9Q42gXA=" "position_controllers";
  ros_controllers = pkg "sha256-dLIPsiGhqo9JJTMxbW8D80otK9tR3JhJnVGD+LoHqxg=" "ros_controllers";
  rqt_joint_trajectory_controller = pkg "sha256-0pARsc38UueHG0YQ1DI4j1KafbrpOvglIQ2BAivDefE=" "rqt_joint_trajectory_controller";
  velocity_controllers = pkg "sha256-NORU/vvpfQFWk5uk6XFkYmwWENecCV+CAhZAeH5ITFU=" "velocity_controllers";
}
