{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "realtime_tools";
    rev = "4599e9a0c766cd232a00bf7632f0b93e9642f877";
    hash = "sha256-SeYdxrdbB+dhJByGSvIlB8iirsnXdBVSA1dDnvMOEdI=";
    name = "ros-controls-realtime_tools-4599e9a0c766cd232a00bf7632f0b93e9642f877";
  });
in
{
  realtime_tools = pkg "sha256-SeYdxrdbB+dhJByGSvIlB8iirsnXdBVSA1dDnvMOEdI=" ".";
}
