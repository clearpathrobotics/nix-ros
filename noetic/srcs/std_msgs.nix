{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "std_msgs";
    rev = "f3554d4182c057f7b9c9ddb1911629126148ae7e";
    hash = "sha256-+vOOxBbKYJlchJJObKeWvQARapSUACTkNS6aD7D/MKQ=";
    name = "ros-std_msgs-f3554d4182c057f7b9c9ddb1911629126148ae7e";
  });
in
{
  std_msgs = pkg "sha256-+vOOxBbKYJlchJJObKeWvQARapSUACTkNS6aD7D/MKQ=" ".";
}
