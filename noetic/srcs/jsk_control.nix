{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jsk-ros-pkg";
    repo = "jsk_control";
    rev = "67e83cab30fdbb9641fda3479435a1485b190f73";
    hash = "sha256-5gl/wW7AF/ksLqx/W0AquhZtbutngIUUzFaqoBYEFP4=";
    name = "jsk-ros-pkg-jsk_control-67e83cab30fdbb9641fda3479435a1485b190f73";
  });
in
{
  cmd_vel_smoother = pkg "sha256-raT83xBHWrvsxU4lGvHZTWOzLgTTlOzSanrfyPD+VcQ=" "cmd_vel_smoother";
  contact_states_observer = pkg "sha256-U8za93qS+G9b+3u2FnsN9yvZ0ScYyL+wDZvnULweex0=" "contact_states_observer";
  eus_nlopt = pkg "sha256-Jz08rmBtorxg68B90T8vak4XpnL2izQOYuf4/Pe+MWY=" "eus_nlopt";
  eus_qp = pkg "sha256-rkmWhz1+yp5vrD7NOzfB5KmIRD1HIv7MG2ZmKR6N3y8=" "eus_qp";
  eus_qpoases = pkg "sha256-NuIYcDWXPTfqxU1PehUqhg50Ezmli3syNHOaPUAxKDU=" "eus_qpoases";
  joy_mouse = pkg "sha256-MvD0OmrRF3bH9VZNfQGwdi0KjliMpZdKbmn+lBJkByc=" "joy_mouse";
  jsk_calibration = pkg "sha256-C0ViUnTsZ1bs8/mhCdlS34UmBr88sgfEPIHtxDmwOEY=" "jsk_calibration";
  jsk_control = pkg "sha256-0TFki9mag61pN0NN5ibF6UgSLdBR/Oy126KoeuxQmj8=" "jsk_control";
  jsk_footstep_controller = pkg "sha256-gTfi5vl9Dpj0P0BeGeeWUaLPHFhnlZrNgxwwQ671Y9I=" "jsk_footstep_controller";
  jsk_footstep_planner = pkg "sha256-yfjqW4zetDU9c1BkKJgpgzOM5LAcfqbs3AYXnewTlZU=" "jsk_footstep_planner";
  jsk_ik_server = pkg "sha256-zCgFV33fHx0GH1dujsvT4GBpYv79EiAyAGTlAT/2+n8=" "jsk_ik_server";
  jsk_teleop_joy = pkg "sha256-sAd5SxDGajZnov0ogNZs8kLunRLe20194aYbIgf7ykQ=" "jsk_teleop_joy";
}
