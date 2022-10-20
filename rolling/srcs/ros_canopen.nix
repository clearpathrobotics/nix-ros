{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-industrial";
    repo = "ros_canopen";
    rev = "e92c2c918ae503c1c7ad30a2f1afc69567ee8914";
    hash = "sha256-Ob9Cc7eUa4naaXjSlggIxz3dztMWALFk6EydPhNzP5g=";
    name = "ros-industrial-ros_canopen-e92c2c918ae503c1c7ad30a2f1afc69567ee8914";
  });
in
{
  can_msgs = pkg "sha256-9K7mCEEppzWP9ITzFZlJje6JHNIFoBxJ/FXPs+NoX4M=" "can_msgs";
}
