{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PepperlFuchs";
    repo = "pf_lidar_ros_driver";
    rev = "b07c6170d7112aa5923bb9b1e47c09f865e00e4d";
    hash = "sha256-tFbHf9zjYYhtQO1pepR0T4XV91CTOw8nQrVjEL1kssE=";
    name = "PepperlFuchs-pf_lidar_ros_driver-b07c6170d7112aa5923bb9b1e47c09f865e00e4d";
  });
in
{
  pf_description = pkg "sha256-ZLDoWRHkb//u/mH1EMZzyWdhVgNC9Hxq+L4sUcQlkA4=" "pf_description";
  pf_driver = pkg "sha256-TY3+roiVfcF/r3ebsERMQJ9MiZfKDfZON7+6HOBK92k=" "pf_driver";
}
