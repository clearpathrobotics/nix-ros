{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_ROS_controllers_cartesian";
    rev = "3f88e21478239c28367b4f10b2ff6286c8c7f8bb";
    hash = "sha256-FOktYqziW3BvEusNYMkWGnpqyoJsg/wo6wH1kDa7oc0=";
    name = "UniversalRobots-Universal_Robots_ROS_controllers_cartesian-3f88e21478239c28367b4f10b2ff6286c8c7f8bb";
  });
in
{
  cartesian_interface = pkg "sha256-WLdDyYXDC4ZLtCO3mSuy5ezcRSQ7Fn9FFzczNe+PfiI=" "cartesian_interface";
  cartesian_trajectory_controller = pkg "sha256-wJoYo08P+rjhUwItwjHTltQI8fBtmq5h88b/bX7yy4k=" "cartesian_trajectory_controller";
  cartesian_trajectory_interpolation = pkg "sha256-ZjRWkvRkEbQThHx0U8Ek2UUWdi+d269ZKJMNBPxTvkI=" "cartesian_trajectory_interpolation";
  ros_controllers_cartesian = pkg "sha256-i1h7eIAyJFbIByvgXUQR6CzaSzxv5lnZZQdgM6yRvQA=" "ros_controllers_cartesian";
  twist_controller = pkg "sha256-rBIKEdV2Qn/ayRpXPE8brV4Ol5BtMXwVJED9IQgz7XQ=" "twist_controller";
}
