{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "pr2_common_actions";
    rev = "2e3ee72afac75ea336a82be19bc3606aaaa3095d";
    hash = "sha256-AIo7LpA38Ld6nlcaHUCqsR1QHOFyWfbPSCUD320Xjuw=";
    name = "pr2-pr2_common_actions-2e3ee72afac75ea336a82be19bc3606aaaa3095d";
  });
in
{
  joint_trajectory_action_tools = pkg "sha256-syBo0jBAN77I2sQ7h3k1LPP9KVliS0WNkRCnnSOZk+4=" "joint_trajectory_action_tools";
  joint_trajectory_generator = pkg "sha256-pYIF+K73obPdvJlBPLxRZ7jnPK8wcqOtxTT/N9meCvk=" "joint_trajectory_generator";
  pr2_arm_move_ik = pkg "sha256-Ng8jHLj4k2RJYoymCBHaxzSyOkjekphAB4lmbpEfqtM=" "pr2_arm_move_ik";
  pr2_common_action_msgs = pkg "sha256-dhU+I0Hl4yQptNca8uXp9f8dv65zLh4vFATPvvWNuwQ=" "pr2_common_action_msgs";
  pr2_common_actions = pkg "sha256-qFohAtLPFmB4tkpEVd+qB32gkFWZIDjmWIoZNMZItIQ=" "pr2_common_actions";
  pr2_tilt_laser_interface = pkg "sha256-aRcVuPhRWoPu5/vp/fh7HbfIhkGrwyeStXcfJfdmapU=" "pr2_tilt_laser_interface";
  pr2_tuck_arms_action = pkg "sha256-/aJFkNn5j4LgdJjabgchGIudhN8VydYXTpcRbCzOYyk=" "pr2_tuck_arms_action";
}
