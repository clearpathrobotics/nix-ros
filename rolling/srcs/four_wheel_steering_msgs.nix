{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "four_wheel_steering_msgs";
    rev = "9ae2775a3d4266ad8dddb4a97d718b2cb3d55a79";
    hash = "sha256-NlCRy6FZABqUKvWbNFEQ69gAuFvjvzXhyWBKmAl/KHQ=";
    name = "ros-drivers-four_wheel_steering_msgs-9ae2775a3d4266ad8dddb4a97d718b2cb3d55a79";
  });
in
{
  four_wheel_steering_msgs = pkg "sha256-NlCRy6FZABqUKvWbNFEQ69gAuFvjvzXhyWBKmAl/KHQ=" ".";
}
