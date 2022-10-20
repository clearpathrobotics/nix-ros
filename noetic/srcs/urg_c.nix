{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "urg_c";
    rev = "bbe007f5a707e9095268072963acc5137159c4f1";
    hash = "sha256-8lyBF/4jyidYdcAt/3pviI2CYAHlLKAvEbTsKzUP0qE=";
    name = "ros-drivers-urg_c-bbe007f5a707e9095268072963acc5137159c4f1";
  });
in
{
  urg_c = pkg "sha256-8lyBF/4jyidYdcAt/3pviI2CYAHlLKAvEbTsKzUP0qE=" ".";
}
