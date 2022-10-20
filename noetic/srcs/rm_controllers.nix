{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rm-controls";
    repo = "rm_controllers";
    rev = "ef98a76757f5ad74c7d39598d411badf8b2d7bde";
    hash = "sha256-vKSlH+TPaZ/Tg4h24j7WtJJN+BNoCduYLOIUn3hcopo=";
    name = "rm-controls-rm_controllers-ef98a76757f5ad74c7d39598d411badf8b2d7bde";
  });
in
{
  gpio_controller = pkg "sha256-gipeU1X7C7ldshZqyontdWjndgn1EOPEmwidPGzIp4U=" "gpio_controller";
  mimic_joint_controller = pkg "sha256-cJxDyk9kabVS2BMPSdY5FJ2EdDVYYL1ASRjncqI8nLE=" "mimic_joint_controller";
  rm_calibration_controllers = pkg "sha256-eb8/eX9BF+Nv7hnEL42pz5dxyljJvImNv/HhMJVUD40=" "rm_calibration_controllers";
  rm_chassis_controllers = pkg "sha256-We5m2dPezrvrUBk2AWCOSBBSiLDWHmpF6PP2Nez3W1U=" "rm_chassis_controllers";
  rm_controllers = pkg "sha256-HfrljPquPHA7g3FBdJJJQRMvReL9Ozh5XqF4SG50XMQ=" "rm_controllers";
  rm_gimbal_controllers = pkg "sha256-zJoaAkBpyWn/arexCj2LuB42LIpENiFsdEir+KZ4k2M=" "rm_gimbal_controllers";
  rm_orientation_controller = pkg "sha256-0kCt3rfv9JyHEiP2rTXVX529vgN3B0oNGJSa8YYSXrE=" "rm_orientation_controller";
  rm_shooter_controllers = pkg "sha256-UDDAKsBBXpKvTrHpXcLDyjjNX7w1MCGOP13/GLDqXTo=" "rm_shooter_controllers";
  robot_state_controller = pkg "sha256-v/kRn8w8ZvaEe05oMJjjF4obK/iJ5TJMHcIaIH4Wp2g=" "robot_state_controller";
  tof_radar_controller = pkg "sha256-8Pwc8XtgQvVcfJL0pMSLzhi07QvCXwRAPZcWyaz9FvE=" "tof_radar_controller";
}
