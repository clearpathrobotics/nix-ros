{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_control";
    rev = "0c914c25629acda5e0ce4fe52bdd2da6b39e253d";
    hash = "sha256-J+Khzdvo1KXh5OjpMwusE/zYD8cbtrb8St9wu296k3M=";
    name = "ipa320-cob_control-0c914c25629acda5e0ce4fe52bdd2da6b39e253d";
  });
in
{
  cob_base_controller_utils = pkg "sha256-EM6TCciXNHNQiIEha6iHisMn+BM3qT31pIgMyewseY0=" "cob_base_controller_utils";
  cob_base_velocity_smoother = pkg "sha256-Y9v4kV6yo4NPbeQKHmjKrNoTeuG/Yf5oWtTpAf90zBI=" "cob_base_velocity_smoother";
  cob_cartesian_controller = pkg "sha256-CzQvrXGTOFux2Mvit45D2jH5NeKcCE7biirsHSXevjM=" "cob_cartesian_controller";
  cob_collision_velocity_filter = pkg "sha256-lpgvEt1c23yy64evsHqGpzDEtmYDMrjnF1KWFDQEqH8=" "cob_collision_velocity_filter";
  cob_control = pkg "sha256-PLZVQaSY8TDXCZKEDWZz/wdtMmt93elu6UfVLdJIrWs=" "cob_control";
  cob_control_mode_adapter = pkg "sha256-CVeAXtfwQGbnp58HApwW5InDSPuq1OmB6PpEx0cx2G0=" "cob_control_mode_adapter";
  cob_control_msgs = pkg "sha256-wJKY6F4Ya3VlugWpZLtaJ/9jwHJAAsJjZNG8bHBVcJA=" "cob_control_msgs";
  cob_footprint_observer = pkg "sha256-5l6ts+T+7Mgoh4wj+JUKbfbk6peDXDNK39v5yDt0OpM=" "cob_footprint_observer";
  cob_frame_tracker = pkg "sha256-ZU64E5QdK7bB95uRTDn2hntXUdx0lI3Ia7FSbAHOKuI=" "cob_frame_tracker";
  cob_hardware_emulation = pkg "sha256-MSz2spjt2LWTrg5orlr5sHnW9+MkcuGMbc44c302oOQ=" "cob_hardware_emulation";
  cob_mecanum_controller = pkg "sha256-WyidLiaMn72md16+urCeBZ2ehxWnMwobs3YwMeektPo=" "cob_mecanum_controller";
  cob_model_identifier = pkg "sha256-bM0rpM+/kF0Je3QbtdBCK0NwG3wrpgPJtj6jJ0fW8Ms=" "cob_model_identifier";
  cob_obstacle_distance = pkg "sha256-/SzENUY+oxAxA+T1lXXXNeFLOucjJTH898wLgjlPpW0=" "cob_obstacle_distance";
  cob_omni_drive_controller = pkg "sha256-7nyk8qzx5/6FYVMq56zYzGNrjhS4onDKjjfW2M84/ck=" "cob_omni_drive_controller";
  cob_trajectory_controller = pkg "sha256-wlubCsX+TqAdzyAtMcH1KtWMXlsYmWVYixBxeBJ0Saw=" "cob_trajectory_controller";
  cob_tricycle_controller = pkg "sha256-zZ/QLI95sUJoGzlL850v+unoCz39jHzFfaNHoz0c34c=" "cob_tricycle_controller";
  cob_twist_controller = pkg "sha256-yL92bV1Nnp754rAAfALSEM52OGShx5DPkVBOSzxWiLQ=" "cob_twist_controller";
}
