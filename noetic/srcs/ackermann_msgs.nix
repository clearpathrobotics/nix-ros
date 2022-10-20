{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "ackermann_msgs";
    rev = "843a4836ba942038db088e06fe626160c09249f0";
    hash = "sha256-ekMseGmnjGufWdsQNTwZj0afO+1LiZ8QKlaZOk1YLOY=";
    name = "ros-drivers-ackermann_msgs-843a4836ba942038db088e06fe626160c09249f0";
  });
in
{
  ackermann_msgs = pkg "sha256-ekMseGmnjGufWdsQNTwZj0afO+1LiZ8QKlaZOk1YLOY=" ".";
}
