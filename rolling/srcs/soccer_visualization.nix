{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ijnek";
    repo = "soccer_visualization";
    rev = "fca9aa0299b63839c46a3fbe06b66a4a26e996e5";
    hash = "sha256-kUH3PYdmwmyqzLAzmCVN0uLAtWXWVYiixL8vSQeqjiM=";
    name = "ijnek-soccer_visualization-fca9aa0299b63839c46a3fbe06b66a4a26e996e5";
  });
in
{
  soccer_marker_generation = pkg "sha256-3P3fmHnpeTlaI9ykWoLBv5F8HGk9vEReSDRKIvZum+Q=" "soccer_marker_generation";
}
