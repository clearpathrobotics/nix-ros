{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "turtlebot3_simulations";
    rev = "f1b300b46decb48bd2d0767bdbf2a118b262b13c";
    hash = "sha256-krqu5x4WR4YiXTTNMSTnFPTju2EgjFzH470plz1Qsqc=";
    name = "ROBOTIS-GIT-turtlebot3_simulations-f1b300b46decb48bd2d0767bdbf2a118b262b13c";
  });
in
{
  turtlebot3_fake_node = pkg "sha256-JK7TxywP8oPOxWZUTwC7it4v6GjEPo8JYc2Imt0OZyI=" "turtlebot3_fake_node";
  turtlebot3_gazebo = pkg "sha256-aWFWPcEi40Tunu+N3M2gdKrvaXecT34YYqdTaiGRXWk=" "turtlebot3_gazebo";
  turtlebot3_simulations = pkg "sha256-bkWWzlpv0fF8RZOwNsd+AKNRzDBU9slb3icod4I963Y=" "turtlebot3_simulations";
}
