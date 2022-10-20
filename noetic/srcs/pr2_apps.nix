{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "pr2_apps";
    rev = "e915eff56b7b5fa4e614eecd32ef59a2a9af2324";
    hash = "sha256-3OqMxb5yhDSOOoCPShpYBjJ08Gzh01OcawkIBMxwDcI=";
    name = "pr2-pr2_apps-e915eff56b7b5fa4e614eecd32ef59a2a9af2324";
  });
in
{
  pr2_app_manager = pkg "sha256-AE03CQ3ekbYoUn2rzQSB57Z8kDNU6jfssE/jEvX1Gm4=" "pr2_app_manager";
  pr2_apps = pkg "sha256-hHc6kCQ7qOTZVnaLqMJWBkHe9ln+bTqVDCINfOjOBh8=" "pr2_apps";
  pr2_mannequin_mode = pkg "sha256-zv29JpTJoMfd8UGzGhIXmRjbYx/bCaB/UITtmS7u+PI=" "pr2_mannequin_mode";
  pr2_position_scripts = pkg "sha256-OPPNSPuUeRCHYYVvQlpE97eUHjALkqZN/zp17yvROiE=" "pr2_position_scripts";
  pr2_teleop = pkg "sha256-yLFvttgndDeLj+/RXx0fSEyY236N1cuO2RjHMdaYPVQ=" "pr2_teleop";
  pr2_teleop_general = pkg "sha256-j7dFgmUvgtG8ceSrTPNBIwzyYRVZ7nLdsIYsEiAPY7U=" "pr2_teleop_general";
  pr2_tuckarm = pkg "sha256-2Cw3Ofax2OZMVs10tV3st7oj0w7ucNAcyhDJoJSk0zA=" "pr2_tuckarm";
}
