{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "um7";
    rev = "394ad4b8fc1dd526340030b6fe19f1ccdc7d8383";
    hash = "sha256-sPZZ/TsmnFiraXKtpGV+LtyBTH1h5h+dpGOQGFove54=";
    name = "ros-drivers-um7-394ad4b8fc1dd526340030b6fe19f1ccdc7d8383";
  });
in
{
  um7 = pkg "sha256-sPZZ/TsmnFiraXKtpGV+LtyBTH1h5h+dpGOQGFove54=" ".";
}
