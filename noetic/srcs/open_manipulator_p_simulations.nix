{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "open_manipulator_p_simulations";
    rev = "113b35d7d435e5c9f91ac56a97a00225fefd0757";
    hash = "sha256-ShuiTlCeERFPpAY8RDun+KBVCv4Hin9QrCxOGMO+LFA=";
    name = "ROBOTIS-GIT-open_manipulator_p_simulations-113b35d7d435e5c9f91ac56a97a00225fefd0757";
  });
in
{
  open_manipulator_p_gazebo = pkg "sha256-blrO2czuv7I36iBCDdn4KHn0PFykPczic1aNxdP+dIg=" "open_manipulator_p_gazebo";
  open_manipulator_p_simulations = pkg "sha256-+jZcd6g+V9uZ0HAQEtXXDcdOhyEhKjQxWeIt6O5pQSs=" "open_manipulator_p_simulations";
}
