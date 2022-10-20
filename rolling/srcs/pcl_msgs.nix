{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "pcl_msgs";
    rev = "16c4174b4903982c8b031672c8cfcdd16a7430dc";
    hash = "sha256-YdspDlpwU8CIVBKEa3kLCnDsR3MsuehC9zuvXtAnt4w=";
    name = "ros-perception-pcl_msgs-16c4174b4903982c8b031672c8cfcdd16a7430dc";
  });
in
{
  pcl_msgs = pkg "sha256-YdspDlpwU8CIVBKEa3kLCnDsR3MsuehC9zuvXtAnt4w=" ".";
}
