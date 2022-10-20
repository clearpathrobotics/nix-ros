{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "micro-ROS";
    repo = "system_modes";
    rev = "682ecb70ecdd981740b618bd1acd23849a2215a6";
    hash = "sha256-Islm3sMbf/N46aYCJfte0Yx09q6VIeFsxCDhMpACPeI=";
    name = "micro-ROS-system_modes-682ecb70ecdd981740b618bd1acd23849a2215a6";
  });
in
{
  launch_system_modes = pkg "sha256-UEwnW7nCqaQLMNdYzO2FUZMWmG3t5Ahc4xIaF2CU31s=" "launch_system_modes";
  system_modes = pkg "sha256-IguTvCobC53TK6TohJINTzbjF8XEZmJn+JYYGjhDaus=" "system_modes";
  system_modes_examples = pkg "sha256-ITAGMkK59Reb3QfnFFFcLD95gpN/XnawBiaVRIpFw6o=" "system_modes_examples";
  system_modes_msgs = pkg "sha256-CDtlZuWQmJOJQkTZ9mCcYZc9XD28tEqp7IYs/hJ+AOs=" "system_modes_msgs";
  test_launch_system_modes = pkg "sha256-t66B9+GMzJv5cytRi3A8nwZMURaPUAEbSx2VW9mBzPU=" "test_launch_system_modes";
}
