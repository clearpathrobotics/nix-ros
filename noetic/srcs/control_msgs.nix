{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "control_msgs";
    rev = "36e2e30551e3f2bfd9e55fca553f1ef019f4e4b1";
    hash = "sha256-HAVlvtljWDBwUV02/x2OKbq1IxeUUAVdXuKykKvuzUw=";
    name = "ros-controls-control_msgs-36e2e30551e3f2bfd9e55fca553f1ef019f4e4b1";
  });
in
{
  control_msgs = pkg "sha256-GSE7ntUKLYfvrN/UnDGjcn8Aqxv7WulbCgRXOfciglA=" "control_msgs";
}
