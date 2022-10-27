{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "ros_controllers";
    rev = "49a40faf18307ecb8044d9f7c8d2cf8b25df89a6";
    hash = "sha256-tqEIBCBOn5Rokg7n2KOxtlDM9X1E+C3GGpgWAXEcD3o=";
    name = "ros-controls-ros_controllers-49a40faf18307ecb8044d9f7c8d2cf8b25df89a6";
  });
in
{
  ackermann_steering_controller = pkg "sha256-PqgklkXkTOU4SjLOAtkn+xy3JgATfXjE77HgVKduOQo=" "ackermann_steering_controller";
  diff_drive_controller = pkg "sha256-MsWpbtfxCrltF7drQ7Etxt2xl8cHoSco0s+QNpiSTP8=" "diff_drive_controller";
  effort_controllers = pkg "sha256-7WKyvRq86/LCHP6q6eptuFfDetOIb6o7qhzakPeMCUo=" "effort_controllers";
  force_torque_sensor_controller = pkg "sha256-wyzM7UJxDxsD12j81pKIk/Symg6xVAqqAEj4STCljvc=" "force_torque_sensor_controller";
  forward_command_controller = pkg "sha256-pZu3UDFThB98IFqXqEGvRw86r2CxXsCPwAPVoapknOE=" "forward_command_controller";
  four_wheel_steering_controller = pkg "sha256-rjtEQ9dAFQq4UYVfpLwNu6c/y29N4M2fiALhMU1YrLk=" "four_wheel_steering_controller";
  gripper_action_controller = pkg "sha256-RVeZiYn6YIATJ4oGUR8BNYfYFHTt1hGpo4ZWk3eprro=" "gripper_action_controller";
  imu_sensor_controller = pkg "sha256-ZIim4C52GR5Bl0XcMTf/P5pTwd7MZ7vZZaFyl7G908M=" "imu_sensor_controller";
  joint_state_controller = pkg "sha256-5dmBKMc/p9znIAnXshNlTP9CKrBhFHWob4ycqfr5+Rk=" "joint_state_controller";
  joint_trajectory_controller = pkg "sha256-GsVzYKukl9Zgf52WPCrpu0QmClaa8Ut4iVQ5YHPlAtQ=" "joint_trajectory_controller";
  position_controllers = pkg "sha256-C6Vf//wt1ZeGM5UU1RvORRf5LvR7+egXtXNkrZ2SVbQ=" "position_controllers";
  ros_controllers = pkg "sha256-AFUDaR9CdrQDDCX374d/K0y/eHhw2JINqu1x7E0bLRU=" "ros_controllers";
  rqt_joint_trajectory_controller = pkg "sha256-jFoa3Gk4VvMSeqbvKlISi+WOWG10sxBmdX1voeTxIqA=" "rqt_joint_trajectory_controller";
  velocity_controllers = pkg "sha256-5wBpHzhLsnF59JuBzleBtxYEdY8i9qpC0rxvZGkp6lA=" "velocity_controllers";
}
