{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "ivcon";
    rev = "5c97b196f9323bff45cec67f63d7c80ed34cf67a";
    hash = "sha256-DwZ/kfYdbHpDIGTNrRMXHjM/ihyAjmVC+bUdiewJFis=";
    name = "ros-ivcon-5c97b196f9323bff45cec67f63d7c80ed34cf67a";
  });
in
{
  ivcon = pkg "sha256-DwZ/kfYdbHpDIGTNrRMXHjM/ihyAjmVC+bUdiewJFis=" ".";
}
