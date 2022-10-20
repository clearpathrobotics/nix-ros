{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "realtime_tools";
    rev = "a5a5a5e470efdda54dd4137e5ebf8c6d6883b713";
    hash = "sha256-brT152GyuJdgG9tzytY+0vtmoW1S1DecdEbLcmuHQCY=";
    name = "ros-controls-realtime_tools-a5a5a5e470efdda54dd4137e5ebf8c6d6883b713";
  });
in
{
  realtime_tools = pkg "sha256-brT152GyuJdgG9tzytY+0vtmoW1S1DecdEbLcmuHQCY=" ".";
}
