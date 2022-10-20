{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "teamspatzenhirn";
    repo = "rviz_2d_overlay_plugins";
    rev = "9bb5e57ab3e79835796af0b2440b93936173ddde";
    hash = "sha256-oDxtvkgrqtmMvZHxclhK6Wb8YsXbO3Zyvt4LnsLiqiE=";
    name = "teamspatzenhirn-rviz_2d_overlay_plugins-9bb5e57ab3e79835796af0b2440b93936173ddde";
  });
in
{
  rviz_2d_overlay_msgs = pkg "sha256-CiHY5k5G2ZsKA/JAIFbAYJTJ6ezIVSFtQjn7i1EF2QE=" "rviz_2d_overlay_msgs";
  rviz_2d_overlay_plugins = pkg "sha256-rIew6GpO1eY12AZkzSr3GYbOYianUUp0PzJeDzXQg2U=" "rviz_2d_overlay_plugins";
}
