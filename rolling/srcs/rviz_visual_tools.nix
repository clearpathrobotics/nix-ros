{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "rviz_visual_tools";
    rev = "6aab746ca10ec34f4993b9d111bc68facac55486";
    hash = "sha256-QQ5ezZ1QYtBqzJ90dJ/WNhSNSsNwvT32p+idNgk+/D8=";
    name = "PickNikRobotics-rviz_visual_tools-6aab746ca10ec34f4993b9d111bc68facac55486";
  });
in
{
  rviz_visual_tools = pkg "sha256-QQ5ezZ1QYtBqzJ90dJ/WNhSNSsNwvT32p+idNgk+/D8=" ".";
}
