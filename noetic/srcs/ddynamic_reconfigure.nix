{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pal-robotics";
    repo = "ddynamic_reconfigure";
    rev = "5ce92b7ff18e148ced92d5e5eac3e0e59084a524";
    hash = "sha256-U68wjCLdk9As8MU7M99AVe8tl01RWXyjZA3gRkg7GBc=";
    name = "pal-robotics-ddynamic_reconfigure-5ce92b7ff18e148ced92d5e5eac3e0e59084a524";
  });
in
{
  ddynamic_reconfigure = pkg "sha256-U68wjCLdk9As8MU7M99AVe8tl01RWXyjZA3gRkg7GBc=" ".";
}
