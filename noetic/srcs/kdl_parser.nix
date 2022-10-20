{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "kdl_parser";
    rev = "74d4ee3bc6938de8ae40a700997baef06114ea1b";
    hash = "sha256-/xqgmI07+8D1YV8w5Fwv3xXfgE7R7itsD6S86OZblRM=";
    name = "ros-kdl_parser-74d4ee3bc6938de8ae40a700997baef06114ea1b";
  });
in
{
  kdl_parser = pkg "sha256-r3WrYeWFNA8mzLDmVCU7mgtvthz5b7EgQcNsVY/5s5s=" "kdl_parser";
  kdl_parser_py = pkg "sha256-aMYdlUJX/gNJ33S06mLvcyrgO+p5yipiK1NUTyHSY38=" "kdl_parser_py";
}
