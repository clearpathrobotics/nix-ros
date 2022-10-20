{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "libyaml_vendor";
    rev = "ec7967d1a29059404075cf7f4c8daf6309aab73c";
    hash = "sha256-VCsFP+YPOpCPBeC1IRskivaj8SNdaxJ/rXn8pcrrB50=";
    name = "ros2-libyaml_vendor-ec7967d1a29059404075cf7f4c8daf6309aab73c";
  });
in
{
  libyaml_vendor = pkg "sha256-VCsFP+YPOpCPBeC1IRskivaj8SNdaxJ/rXn8pcrrB50=" ".";
}
