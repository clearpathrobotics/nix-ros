{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "ApexAI";
    repo = "point_cloud_msg_wrapper";
    rev = "5eabe4cc125f550133ab69a5a08d7f40b84a035c";
    hash = "sha256-TJtbyejlq6X28yVOSSM2Xnnacpu66TUAzaL3a3tktuw=";
    name = "ApexAI-point_cloud_msg_wrapper-5eabe4cc125f550133ab69a5a08d7f40b84a035c";
  });
in
{
  point_cloud_msg_wrapper = pkg "sha256-LiHXg+Jj7fMDItxqFAz8F5On1mitqVf18p4luIzXtWk=" "point_cloud_msg_wrapper";
}
