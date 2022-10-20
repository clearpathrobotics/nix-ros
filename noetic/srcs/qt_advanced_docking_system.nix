{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "githubuser0xFFFF";
    repo = "Qt-Advanced-Docking-System";
    rev = "3cd6d766f8ddb0dc306e7e7fa5b3e406f84b56c6";
    hash = "sha256-vQyBWPUjGbBfqQagLqVjIpXaRt5bom4jZ5gTyVRelzA=";
    name = "githubuser0xFFFF-Qt-Advanced-Docking-System-3cd6d766f8ddb0dc306e7e7fa5b3e406f84b56c6";
  });
in
{
  QtADS = pkg "sha256-vQyBWPUjGbBfqQagLqVjIpXaRt5bom4jZ5gTyVRelzA=" ".";
}
