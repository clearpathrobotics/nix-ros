{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "kdl_parser";
    rev = "4641bc571a1a9c00ae012ae7ec0d7f4d43bf5e33";
    hash = "sha256-/v4GvtwevVTxp4AHMETSc9BhW3MW8AikIggmvgxhiAE=";
    name = "ros-kdl_parser-4641bc571a1a9c00ae012ae7ec0d7f4d43bf5e33";
  });
in
{
  kdl_parser = pkg "sha256-35J06kwJiMaoUJx5w6eyiBUJeJ+s3DaiH/NPGa1lqa0=" "kdl_parser";
}
