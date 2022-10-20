{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "genpy";
    rev = "d3296724aa6970d940f5b5cf083706df5abaf96f";
    hash = "sha256-uNjKbe66mVx4if04cDv1Cy0AaA27R04f2v0i4+suV3s=";
    name = "ros-genpy-d3296724aa6970d940f5b5cf083706df5abaf96f";
  });
in
{
  genpy = pkg "sha256-uNjKbe66mVx4if04cDv1Cy0AaA27R04f2v0i4+suV3s=" ".";
}
