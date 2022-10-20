{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "rqt_frame_editor_plugin";
    rev = "194e1847857e018429b8dc7ffd178425191e4a0d";
    hash = "sha256-xz1fhIAFSEbT2N1vPL8U6W+/Jba/G8Ugx+gFsdAIaow=";
    name = "ipa320-rqt_frame_editor_plugin-194e1847857e018429b8dc7ffd178425191e4a0d";
  });
in
{
  frame_editor = pkg "sha256-MjBvlL4aX4lEJuRGkwsH9f/OzkvduiSF8ye2Dv0i/Xk=" "frame_editor";
}
