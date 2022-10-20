{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mikeferguson";
    repo = "graceful_controller";
    rev = "7a7ec5bd115461ccb2c83db335133cd1ff21a9e7";
    hash = "sha256-asi3muP78G5/MtMdcu3h3zf6GhLVLJoH/7j3ap+j99E=";
    name = "mikeferguson-graceful_controller-7a7ec5bd115461ccb2c83db335133cd1ff21a9e7";
  });
in
{
  graceful_controller = pkg "sha256-bSD5Ts8KQwi0k/jCCXRIS7WoyCBP61zcaalCJ+gD6LI=" "graceful_controller";
  graceful_controller_ros = pkg "sha256-h6BGTi3d5RdVGl5AazzOTf9YYDezBf1ZDu0nfYpzGic=" "graceful_controller_ros";
}
