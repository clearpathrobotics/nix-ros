{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "oKermorgant";
    repo = "slider_publisher";
    rev = "f226ce6845a4eee71f32733f7c8f896acddeb6f8";
    hash = "sha256-1FrNqfALJCeIX32+mwhrAamOims75SUeurYnSINXcdk=";
    name = "oKermorgant-slider_publisher-f226ce6845a4eee71f32733f7c8f896acddeb6f8";
  });
in
{
  slider_publisher = pkg "sha256-1FrNqfALJCeIX32+mwhrAamOims75SUeurYnSINXcdk=" ".";
}
