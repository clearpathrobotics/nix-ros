{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "githubuser0xFFFF";
    repo = "Qt-Advanced-Docking-System";
    rev = "00e4dc14ba384feb579b218b70458dc5fc9de82c";
    hash = "sha256-BMsdoWcgCtCC43mLKdPH7v1xhhk5M6we/HyhWHNZn9s=";
    name = "githubuser0xFFFF-Qt-Advanced-Docking-System-00e4dc14ba384feb579b218b70458dc5fc9de82c";
  });
in
{
  QtADS = pkg "sha256-BMsdoWcgCtCC43mLKdPH7v1xhhk5M6we/HyhWHNZn9s=" ".";
}
