{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-teleop";
    repo = "twist_mux";
    rev = "c6d4926b7bcf80a66d5118445bce33c84d431180";
    hash = "sha256-AVCNaCvCLm+0uD//Rlj4yHadsoKIuR+eY+H8CmdaT5Q=";
    name = "ros-teleop-twist_mux-c6d4926b7bcf80a66d5118445bce33c84d431180";
  });
in
{
  twist_mux = pkg "sha256-AVCNaCvCLm+0uD//Rlj4yHadsoKIuR+eY+H8CmdaT5Q=" ".";
}
