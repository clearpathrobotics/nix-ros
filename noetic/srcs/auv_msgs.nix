{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "oceansystemslab";
    repo = "auv_msgs";
    rev = "1faaddd7ee6e9c2c9869e3d8dcff92bb56c2fce4";
    hash = "sha256-cs5oRlyiuV6Es/pjqEwJdiKfwE83/1Ii28Cw1RU5pMg=";
    name = "oceansystemslab-auv_msgs-1faaddd7ee6e9c2c9869e3d8dcff92bb56c2fce4";
  });
in
{
  auv_msgs = pkg "sha256-cs5oRlyiuV6Es/pjqEwJdiKfwE83/1Ii28Cw1RU5pMg=" ".";
}
