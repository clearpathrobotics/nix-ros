{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ual-arm-ros-pkg";
    repo = "mvsim";
    rev = "efa79ba4cc5d9f580f97d381bab1c20e2157dcf5";
    hash = "sha256-jFadJ6gY0ypFuBem4IFvRHrSL6UwLlkog3RyQGPJWxk=";
    name = "ual-arm-ros-pkg-mvsim-efa79ba4cc5d9f580f97d381bab1c20e2157dcf5";
  });
in
{
  mvsim = pkg "sha256-jFadJ6gY0ypFuBem4IFvRHrSL6UwLlkog3RyQGPJWxk=" ".";
}
