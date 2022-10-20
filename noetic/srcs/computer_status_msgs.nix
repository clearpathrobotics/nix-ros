{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "plusone-robotics";
    repo = "computer_status_msgs";
    rev = "d162fc5a38a42bed76fec3c15838266b954776c9";
    hash = "sha256-yP9hLB+p8rXKdw1+fWvhG5CqvpAUQ0obvklAavCTEqQ=";
    name = "plusone-robotics-computer_status_msgs-d162fc5a38a42bed76fec3c15838266b954776c9";
  });
in
{
  computer_status_msgs = pkg "sha256-FgVw4PNwtA2MUSIEBO2nWBt19mEMJ/1oGYnaf0BZfWw=" "computer_status_msgs";
}
