{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "yoshito-n-students";
    repo = "codec_image_transport";
    rev = "7b5d9f29e329cf50124ea9c228ceaa93f469065d";
    hash = "sha256-D/MNtMRUoxFZ65mnLHNCTWBtVxBlAiR8fLg79fSI0WM=";
    name = "yoshito-n-students-codec_image_transport-7b5d9f29e329cf50124ea9c228ceaa93f469065d";
  });
in
{
  codec_image_transport = pkg "sha256-D/MNtMRUoxFZ65mnLHNCTWBtVxBlAiR8fLg79fSI0WM=" ".";
}
