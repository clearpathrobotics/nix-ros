{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "EduArt-Robotik";
    repo = "iotbot";
    rev = "7efec6071a9e070722e703bf7c6ff86dedd34469";
    hash = "sha256-njoec2thVBMTRMAFEr/TTNE2K/3iyLPxHj33k7u5jb0=";
    name = "EduArt-Robotik-iotbot-7efec6071a9e070722e703bf7c6ff86dedd34469";
  });
in
{
  iotbot = pkg "sha256-njoec2thVBMTRMAFEr/TTNE2K/3iyLPxHj33k7u5jb0=" ".";
}
