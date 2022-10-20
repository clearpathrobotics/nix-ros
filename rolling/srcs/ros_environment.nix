{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "ros_environment";
    rev = "a6f7aed97dc2ec0e9146d9d7c4773376246ff223";
    hash = "sha256-jt3CJrw8btP3sylhYwYuXEMelSBgaKRKvbcazLu+fmM=";
    name = "ros-ros_environment-a6f7aed97dc2ec0e9146d9d7c4773376246ff223";
  });
in
{
  ros_environment = pkg "sha256-jt3CJrw8btP3sylhYwYuXEMelSBgaKRKvbcazLu+fmM=" ".";
}
