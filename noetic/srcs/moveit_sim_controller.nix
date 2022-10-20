{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "moveit_sim_controller";
    rev = "adf725ac2e892311e266163bcc4fc8ea017186da";
    hash = "sha256-XpvMMrxuwI+Dt+D+s+zCnMDKR89/jVm5ffhq4Z0VVws=";
    name = "PickNikRobotics-moveit_sim_controller-adf725ac2e892311e266163bcc4fc8ea017186da";
  });
in
{
  moveit_sim_controller = pkg "sha256-XpvMMrxuwI+Dt+D+s+zCnMDKR89/jVm5ffhq4Z0VVws=" ".";
}
