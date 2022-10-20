{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mikeferguson";
    repo = "moveit_python";
    rev = "1335857c9368a86b48125786c8b3b6c17c39e1d6";
    hash = "sha256-bfD318u3nC3BDIVtHoGFHERb2mxOnSl0A9T/uHIsVTc=";
    name = "mikeferguson-moveit_python-1335857c9368a86b48125786c8b3b6c17c39e1d6";
  });
in
{
  moveit_python = pkg "sha256-bfD318u3nC3BDIVtHoGFHERb2mxOnSl0A9T/uHIsVTc=" ".";
}
