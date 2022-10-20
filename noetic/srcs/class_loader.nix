{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "class_loader";
    rev = "4c4f6903b3f86f8ae97def9e0356efce908b7414";
    hash = "sha256-KTy4+vrXsePdsYenQiWtj+2Axy7wFVLUkous/yQNxwg=";
    name = "ros-class_loader-4c4f6903b3f86f8ae97def9e0356efce908b7414";
  });
in
{
  class_loader = pkg "sha256-KTy4+vrXsePdsYenQiWtj+2Axy7wFVLUkous/yQNxwg=" ".";
}
