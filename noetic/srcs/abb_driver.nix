{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-industrial";
    repo = "abb_driver";
    rev = "8bc2ea8cda08bdefdc0dc7fc2411a3b34d525cfe";
    hash = "sha256-9TL4rVKxjRr7PkPDRlPPFMBEGMcXJXTVX85QPkUb0s4=";
    name = "ros-industrial-abb_driver-8bc2ea8cda08bdefdc0dc7fc2411a3b34d525cfe";
  });
in
{
  abb_driver = pkg "sha256-9TL4rVKxjRr7PkPDRlPPFMBEGMcXJXTVX85QPkUb0s4=" ".";
}
