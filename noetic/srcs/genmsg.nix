{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "genmsg";
    rev = "7d8b6ce6f43b6e39ea8261125d270f2d3062356f";
    hash = "sha256-wG+APH77+Gjj3bfSEgBp9cFGkQUZORBZWXKO3TLhAXU=";
    name = "ros-genmsg-7d8b6ce6f43b6e39ea8261125d270f2d3062356f";
  });
in
{
  genmsg = pkg "sha256-wG+APH77+Gjj3bfSEgBp9cFGkQUZORBZWXKO3TLhAXU=" ".";
}
