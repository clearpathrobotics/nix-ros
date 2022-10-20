{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tuc-proaut";
    repo = "ros_pcdfilter";
    rev = "3420b76128df7693c1ed61b0089c4231fb4179f9";
    hash = "sha256-t7CUux+bLiLxCaHV2KWWXi6YONKSN5o2rLTcDv0zXm4=";
    name = "tuc-proaut-ros_pcdfilter-3420b76128df7693c1ed61b0089c4231fb4179f9";
  });
in
{
  pcdfilter_pa = pkg "sha256-t7CUux+bLiLxCaHV2KWWXi6YONKSN5o2rLTcDv0zXm4=" ".";
}
