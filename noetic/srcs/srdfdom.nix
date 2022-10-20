{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "srdfdom";
    rev = "d78323af1064498b77b2f01f7fbbc71baab3b6de";
    hash = "sha256-yv48WuQEHqDL20uDFLGZDae3ZvPQDI40ndxiSOSGkk0=";
    name = "ros-planning-srdfdom-d78323af1064498b77b2f01f7fbbc71baab3b6de";
  });
in
{
  srdfdom = pkg "sha256-yv48WuQEHqDL20uDFLGZDae3ZvPQDI40ndxiSOSGkk0=" ".";
}
