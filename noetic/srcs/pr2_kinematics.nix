{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "pr2_kinematics";
    rev = "cc7bd1c33ff39d9c46e19d783831e43dd0a7a3f4";
    hash = "sha256-Ks4lEMoTJcQJOZ7mSp6dhqht/xDxZDaYXoKZjctv6Us=";
    name = "pr2-pr2_kinematics-cc7bd1c33ff39d9c46e19d783831e43dd0a7a3f4";
  });
in
{
  pr2_arm_kinematics = pkg "sha256-x9tmC8pof/LT3Fs9oJ2dpr/uCCt8r8uPrpJ2SpfT9mg=" "pr2_arm_kinematics";
  pr2_kinematics = pkg "sha256-BD6IpLwjV48GIM1VpweG3d3r7ebSKfmejUCAfx8rO4Y=" "pr2_kinematics";
}
