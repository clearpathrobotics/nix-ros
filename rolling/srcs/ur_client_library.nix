{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_Client_Library";
    rev = "1ed6576518ba7581352268349de588f552d5e8f0";
    hash = "sha256-w12S7FxfHMwD2ugR2VZxrlr8DV30nITaaa3jIQ/OqXw=";
    name = "UniversalRobots-Universal_Robots_Client_Library-1ed6576518ba7581352268349de588f552d5e8f0";
  });
in
{
  ur_client_library = pkg "sha256-w12S7FxfHMwD2ugR2VZxrlr8DV30nITaaa3jIQ/OqXw=" ".";
}
