{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rospilot";
    repo = "rospilot";
    rev = "02f159ecddd7e6d2269f068f98cc7cbad051c1ef";
    hash = "sha256-z6FF+wqtAzgr24s8u+U97BLJ5P5wBSUdrsYgzBmlLOU=";
    name = "rospilot-rospilot-02f159ecddd7e6d2269f068f98cc7cbad051c1ef";
  });
in
{
  rospilot = pkg "sha256-z6FF+wqtAzgr24s8u+U97BLJ5P5wBSUdrsYgzBmlLOU=" ".";
}
