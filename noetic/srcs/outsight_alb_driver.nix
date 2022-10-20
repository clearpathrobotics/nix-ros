{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "outsight-public/outsight-drivers";
    repo = "outsight_alb_driver";
    rev = "1d24dca42ea447323b55cc5f3faf88e8cb504a0d";
    hash = "sha256-tPLoQJPRC8WqkKlHImOunJ7op4a+SCMARhfRg9B5cKg=";
    name = "outsight-public-outsight-drivers-outsight_alb_driver-1d24dca42ea447323b55cc5f3faf88e8cb504a0d";
  });
in
{
  outsight_alb_driver = pkg "sha256-tPLoQJPRC8WqkKlHImOunJ7op4a+SCMARhfRg9B5cKg=" ".";
}
