{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-acceleration";
    repo = "vitis_common";
    rev = "661d5ed8cdd7b171e6d8fc18dde2a82a6336b0f7";
    hash = "sha256-K6BliyL56las1cA019YmPWtcy/bVEejNPaYTF7SVYic=";
    name = "ros-acceleration-vitis_common-661d5ed8cdd7b171e6d8fc18dde2a82a6336b0f7";
  });
in
{
  vitis_common = pkg "sha256-K6BliyL56las1cA019YmPWtcy/bVEejNPaYTF7SVYic=" ".";
}
