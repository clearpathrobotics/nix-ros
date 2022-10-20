{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "nobleo";
    repo = "mobile_robot_simulator";
    rev = "5dec4f09026de9f4d2efc3d253b7b9f02fa31488";
    hash = "sha256-zXR6rWlOY2A4SY78s59s0ntwIlW8hF47nkBFcDhaP30=";
    name = "nobleo-mobile_robot_simulator-5dec4f09026de9f4d2efc3d253b7b9f02fa31488";
  });
in
{
  mobile_robot_simulator = pkg "sha256-zXR6rWlOY2A4SY78s59s0ntwIlW8hF47nkBFcDhaP30=" ".";
}
