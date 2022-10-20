{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_srv";
    rev = "decb1eed8e493a05d03251b27412376c21186806";
    hash = "sha256-/AtH/gBQ0F4EW7o/1m5/tLaqnnx6smzUEImR9KR1HbQ=";
    name = "ros-visualization-rqt_srv-decb1eed8e493a05d03251b27412376c21186806";
  });
in
{
  rqt_srv = pkg "sha256-/AtH/gBQ0F4EW7o/1m5/tLaqnnx6smzUEImR9KR1HbQ=" ".";
}
