{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_graph";
    rev = "41bd83a96cdf2182d7bdf0ea5c2b973b0c48ddd6";
    hash = "sha256-ocfVFjDutLh5HjIGBT57NcNm7Lbr30IiabeSc0EV1Xk=";
    name = "ros-visualization-rqt_graph-41bd83a96cdf2182d7bdf0ea5c2b973b0c48ddd6";
  });
in
{
  rqt_graph = pkg "sha256-ocfVFjDutLh5HjIGBT57NcNm7Lbr30IiabeSc0EV1Xk=" ".";
}
