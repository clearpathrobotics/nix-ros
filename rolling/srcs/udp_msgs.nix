{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "flynneva";
    repo = "udp_msgs";
    rev = "40368b9f333e46eb617317f2557c7be7d9f8ff93";
    hash = "sha256-g0Gi+BMs9cMS5t5Fh+epx+fKUhebhUczapOPMz9Bg5A=";
    name = "flynneva-udp_msgs-40368b9f333e46eb617317f2557c7be7d9f8ff93";
  });
in
{
  udp_msgs = pkg "sha256-g0Gi+BMs9cMS5t5Fh+epx+fKUhebhUczapOPMz9Bg5A=" ".";
}
