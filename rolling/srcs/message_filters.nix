{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "message_filters";
    rev = "e92d36db50514e27c2799c0660ae5f701f308e89";
    hash = "sha256-m/S88VybHLpdyuokCAR5jI0GgvPWseHtRiW3KZNBP6A=";
    name = "ros2-message_filters-e92d36db50514e27c2799c0660ae5f701f308e89";
  });
in
{
  message_filters = pkg "sha256-m/S88VybHLpdyuokCAR5jI0GgvPWseHtRiW3KZNBP6A=" ".";
}
