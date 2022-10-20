{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "uos";
    repo = "rospy_message_converter";
    rev = "4d2f56daafff017e252a399435c80a5f7e56ecfa";
    hash = "sha256-CdmHIt2IR8MrzkJgGGUfDaRANRo7aN2ub4YZoYA/YpY=";
    name = "uos-rospy_message_converter-4d2f56daafff017e252a399435c80a5f7e56ecfa";
  });
in
{
  rospy_message_converter = pkg "sha256-CdmHIt2IR8MrzkJgGGUfDaRANRo7aN2ub4YZoYA/YpY=" ".";
}
