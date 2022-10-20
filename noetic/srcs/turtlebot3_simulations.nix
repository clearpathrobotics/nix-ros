{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "turtlebot3_simulations";
    rev = "e9d809ca8e3bf889c0275e4103b15a341ffab888";
    hash = "sha256-N4FJvng48pHV963GbL8mFoT8WtBSgdFZc9BAFfYPJFE=";
    name = "ROBOTIS-GIT-turtlebot3_simulations-e9d809ca8e3bf889c0275e4103b15a341ffab888";
  });
in
{
  turtlebot3_fake = pkg "sha256-k2Oo4SH8RFCFB+EJq5pu/h5ADYDLii9RzVkj47Zoep8=" "turtlebot3_fake";
  turtlebot3_gazebo = pkg "sha256-eyDNkPH3zZEUUCqFCy0/hQW/ufKcgF7C8rVTyMNMWuY=" "turtlebot3_gazebo";
  turtlebot3_simulations = pkg "sha256-3whDHJxK9b6qeoSdk7sdQroNBwRbo+QdLg1Zt2GOyU4=" "turtlebot3_simulations";
}
