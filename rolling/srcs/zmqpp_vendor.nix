{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tier4";
    repo = "zmqpp_vendor";
    rev = "225354f54fcca56fca6279a1d50c25ff373092e3";
    hash = "sha256-mvmU4n8sm+6DS0RKBJQtJe301fvzkHBmptX2IhTV8Vk=";
    name = "tier4-zmqpp_vendor-225354f54fcca56fca6279a1d50c25ff373092e3";
  });
in
{
  zmqpp_vendor = pkg "sha256-mvmU4n8sm+6DS0RKBJQtJe301fvzkHBmptX2IhTV8Vk=" ".";
}
