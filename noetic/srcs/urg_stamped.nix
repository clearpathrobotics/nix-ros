{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "seqsense";
    repo = "urg_stamped";
    rev = "39d7cefb8c4c44f925303bc1b8f17da5fc2fb59f";
    hash = "sha256-bDqdRpNutLhSAPae21Q4vQnISZ2ovtWUiuCqFVeUyDQ=";
    name = "seqsense-urg_stamped-39d7cefb8c4c44f925303bc1b8f17da5fc2fb59f";
  });
in
{
  urg_stamped = pkg "sha256-bDqdRpNutLhSAPae21Q4vQnISZ2ovtWUiuCqFVeUyDQ=" ".";
}
