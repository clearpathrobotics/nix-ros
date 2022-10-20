{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "urdfdom_headers";
    rev = "2981892df9da19d10f58dc84de63820e4f554f63";
    hash = "sha256-ry5wDMRxR7TtupUghe9t1XP0XMvWKiOesO5RFHPrSdI=";
    name = "ros-urdfdom_headers-2981892df9da19d10f58dc84de63820e4f554f63";
  });
in
{
  urdfdom_headers = pkg "sha256-ry5wDMRxR7TtupUghe9t1XP0XMvWKiOesO5RFHPrSdI=" ".";
}
