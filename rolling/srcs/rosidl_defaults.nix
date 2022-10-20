{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosidl_defaults";
    rev = "864eebcdb768260a9aba4a826ecfb8f86d658358";
    hash = "sha256-OrI3xW29Ap1rDc4dzGYblI/eFe2jvDwwkZZo0oDHmf8=";
    name = "ros2-rosidl_defaults-864eebcdb768260a9aba4a826ecfb8f86d658358";
  });
in
{
  rosidl_default_generators = pkg "sha256-LLXS4Kmu4Mzu0Fksz4W/iTtiNeabFXAVgElRFi7yfBk=" "rosidl_default_generators";
  rosidl_default_runtime = pkg "sha256-hzkWoxfe2SnGhoBZRxlazjjwlQCTk9SRBUsegqTo9a4=" "rosidl_default_runtime";
}
