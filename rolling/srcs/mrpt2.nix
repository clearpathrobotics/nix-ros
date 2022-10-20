{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "MRPT";
    repo = "mrpt";
    rev = "607934cf51bedd5b20b5c589c9efc2425d16ff7a";
    hash = "sha256-+BlVVUJ6iFmCqw1dLsLqOzOlK9+aXMB9PD9WseERzeY=";
    name = "MRPT-mrpt-607934cf51bedd5b20b5c589c9efc2425d16ff7a";
  });
in
{
  mrpt2 = pkg "sha256-+BlVVUJ6iFmCqw1dLsLqOzOlK9+aXMB9PD9WseERzeY=" ".";
}
