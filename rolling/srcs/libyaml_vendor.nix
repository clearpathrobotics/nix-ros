{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "libyaml_vendor";
    rev = "a5877ba93987633501ebe943ab54b306842c529c";
    hash = "sha256-Mjfanx9mgCeHdfK4o9i8k0HyXZsJb/yqSACbZoIxnSI=";
    name = "ros2-libyaml_vendor-a5877ba93987633501ebe943ab54b306842c529c";
  });
in
{
  libyaml_vendor = pkg "sha256-Mjfanx9mgCeHdfK4o9i8k0HyXZsJb/yqSACbZoIxnSI=" ".";
}
