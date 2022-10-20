{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_manipulation";
    rev = "6b727e7df791217854d57b53a15e8877ab9ae0a7";
    hash = "sha256-PJKLj2fdvkSnIa9woKE+gLQCbehSxWdcnibIzVIxzAk=";
    name = "ipa320-cob_manipulation-6b727e7df791217854d57b53a15e8877ab9ae0a7";
  });
in
{
  cob_collision_monitor = pkg "sha256-xb/l7/EHC8M2h671Rj66eFWYuXpEco35IuVc2G2xVC8=" "cob_collision_monitor";
  cob_grasp_generation = pkg "sha256-Fc+Rt4p7Zj59eR6gJaNWjTk/oLF2onsrp+IqGuU4qQU=" "cob_grasp_generation";
  cob_lookat_action = pkg "sha256-lWRTdmSosQR2Bi+Dk0z2/LVZE4wjy2EBVwS/tVTy/KI=" "cob_lookat_action";
  cob_manipulation = pkg "sha256-lUtd3YDFJXpOWk9tSlB04rT/4hWy7MIj+VoFjEKgBDo=" "cob_manipulation";
  cob_manipulation_msgs = pkg "sha256-4wztVDOsm4pyxgq3Q76yCmrdTjRdceO+6vwFW0FLks4=" "cob_manipulation_msgs";
  cob_moveit_bringup = pkg "sha256-lgTo0w5JLCVIelWFfS1oj/9Pg8dsn96DOzri0TzVsw4=" "cob_moveit_bringup";
  cob_moveit_interface = pkg "sha256-BaRSMWAaaPaXJFPR0WwO7Cl4FA68MmeTUzomHUqhvY0=" "cob_moveit_interface";
  cob_obstacle_distance_moveit = pkg "sha256-ZCpIqsFnjwQ02Yi2zKbF8LN34Kgkj6phCISJdYze+78=" "cob_obstacle_distance_moveit";
}
