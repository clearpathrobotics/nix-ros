{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "xacro";
    rev = "9b403b10ed0da9eb22cfb87e70f9932a4c9e08ea";
    hash = "sha256-o1KPhH2ZEaRPNSBg1XL8KwEIxRMk8AOvQMCCZ5rjWqo=";
    name = "ros-xacro-9b403b10ed0da9eb22cfb87e70f9932a4c9e08ea";
  });
in
{
  xacro = pkg "sha256-o1KPhH2ZEaRPNSBg1XL8KwEIxRMk8AOvQMCCZ5rjWqo=" ".";
}
