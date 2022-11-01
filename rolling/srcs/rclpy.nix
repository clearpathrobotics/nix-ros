{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rclpy";
    rev = "42397ad880e15a9b11ec3be419ff50b95afb8959";
    hash = "sha256-CYCcUY8cym6UC7lgmBQmYDv9aRiLirZXaYmSVEkkmcs=";
    name = "ros2-rclpy-42397ad880e15a9b11ec3be419ff50b95afb8959";
  });
in
{
  rclpy = pkg "sha256-97Ht2AUSM6py1Klme+9uBa0YN7pBdEjrzbZF3lplwdo=" "rclpy";
}
