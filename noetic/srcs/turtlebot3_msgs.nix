{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "turtlebot3_msgs";
    rev = "76e78b0a34e07cf1dd16dafdc54c44f35c5b83eb";
    hash = "sha256-ZZnN89DLJ0RdS08RnhlnJbsESnfHTtzEDpdZUDylZh0=";
    name = "ROBOTIS-GIT-turtlebot3_msgs-76e78b0a34e07cf1dd16dafdc54c44f35c5b83eb";
  });
in
{
  turtlebot3_msgs = pkg "sha256-ZZnN89DLJ0RdS08RnhlnJbsESnfHTtzEDpdZUDylZh0=" ".";
}
