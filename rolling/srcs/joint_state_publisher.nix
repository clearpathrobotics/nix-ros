{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "joint_state_publisher";
    rev = "e76162020740cb118ab1d82fdd486ea25e54d51e";
    hash = "sha256-KAYBtTtJ+LXenC9A2+r55/Gf2YIW7vnk66pTvMGVokE=";
    name = "ros-joint_state_publisher-e76162020740cb118ab1d82fdd486ea25e54d51e";
  });
in
{
  joint_state_publisher = pkg "sha256-JA4xQ4bvMon+tXWHg/JOBSFOkDPo6TGZcqjsZn08hyk=" "joint_state_publisher";
  joint_state_publisher_gui = pkg "sha256-wXWRvfV6cG7yIshmQ7Uw/qgvNZ52De3M2aX9PlCHJ3c=" "joint_state_publisher_gui";
}
