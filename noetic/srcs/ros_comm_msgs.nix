{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "ros_comm_msgs";
    rev = "f51a0429966debce1284d245209d9c68d6d99a1c";
    hash = "sha256-fswoO8FQgus7x62XOToG1Q83vdRZHGI203OirKK5GB8=";
    name = "ros-ros_comm_msgs-f51a0429966debce1284d245209d9c68d6d99a1c";
  });
in
{
  rosgraph_msgs = pkg "sha256-a+M/szdRfyQRUGAX8HuQ3ATAd+HRIOaTEQXLo3IYKiM=" "rosgraph_msgs";
  std_srvs = pkg "sha256-/q/0cC4jjAsOm2+Hgn95re5D/MLiblBa+nMnv3ZU/M0=" "std_srvs";
}
