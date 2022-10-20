{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros4hri";
    repo = "libhri";
    rev = "a5b0779d0ee609121adeff6bb693ca53325671e5";
    hash = "sha256-z6U3SXzsgbV9ET3ka5/SNeIwmdrtJCRqEx/5zyPwYPY=";
    name = "ros4hri-libhri-a5b0779d0ee609121adeff6bb693ca53325671e5";
  });
in
{
  hri = pkg "sha256-z6U3SXzsgbV9ET3ka5/SNeIwmdrtJCRqEx/5zyPwYPY=" ".";
}
