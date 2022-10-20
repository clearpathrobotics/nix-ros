{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "ApexAI";
    repo = "apex_containers";
    rev = "977af427eabb27c3a18e17c604c1f8a29170457d";
    hash = "sha256-AVs/0FYtb93h1T12SaZ/Hr+ntcmBd6K0+wm3g2XeAYA=";
    name = "ApexAI-apex_containers-977af427eabb27c3a18e17c604c1f8a29170457d";
  });
in
{
  apex_containers = pkg "sha256-01lF2ZodmNGfazVwwxuHKPBMihyBFcKcwU2K6tpJxmk=" "apex_containers";
}
