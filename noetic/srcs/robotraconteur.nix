{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "robotraconteur";
    repo = "robotraconteur";
    rev = "eb1501aa54760ea9cea60d9b8d429f997e29578e";
    hash = "sha256-y3kqoSEsPNbUDogECSOU4HYTkVnxqH8BQvX/G92NTZU=";
    name = "robotraconteur-robotraconteur-eb1501aa54760ea9cea60d9b8d429f997e29578e";
  });
in
{
  robotraconteur = pkg "sha256-y3kqoSEsPNbUDogECSOU4HYTkVnxqH8BQvX/G92NTZU=" ".";
}
