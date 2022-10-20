{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_ROS_scaled_controllers";
    rev = "2db67c5a2d863627ad940eb7b238bc8aae5c8cf8";
    hash = "sha256-pygVfKO6S/11Mx5G9NZ2JBaQXZrmqu3RkizP4WH5ZT0=";
    name = "UniversalRobots-Universal_Robots_ROS_scaled_controllers-2db67c5a2d863627ad940eb7b238bc8aae5c8cf8";
  });
in
{
  scaled_controllers = pkg "sha256-K8ub4xfSi+ZgWHS13FwicR+OiVStw9cY2GhmbM/KJ3Q=" "scaled_controllers";
  scaled_joint_trajectory_controller = pkg "sha256-jUZRQOafoEE+3NgwlhohEKXbm55ZHtXsoBS9QcCVF7A=" "scaled_joint_trajectory_controller";
  speed_scaling_interface = pkg "sha256-tpRtl7EOmftBei2STDTMTdEEY7TmT9exs8jLz+7o1YQ=" "speed_scaling_interface";
  speed_scaling_state_controller = pkg "sha256-1XklzuAp7FUjD5JLUfgrU0VDcvbdxwuNv4Txub8z0Z8=" "speed_scaling_state_controller";
}
