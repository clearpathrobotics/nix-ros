{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "audio_common";
    rev = "127912fda4d558ac4b9664f57c1f965549512946";
    hash = "sha256-YWwOHJUBaJmgG+UnbNuhN4Qr0IRRqPrz2LeMwz36qDg=";
    name = "ros-drivers-audio_common-127912fda4d558ac4b9664f57c1f965549512946";
  });
in
{
  audio_capture = pkg "sha256-Hi01gKNYI3A4NmCIrn3IG4QJ7I0h3DU47Qn1ClSxvFM=" "audio_capture";
  audio_common = pkg "sha256-fY2muPyxaboZurHho2WPDOSPircqkEBRhwNDQg6/zwE=" "audio_common";
  audio_common_msgs = pkg "sha256-7BoGkNR2U4PTBxEWbwCkf2w/jP8Pe9Bb94AN3xBtKeg=" "audio_common_msgs";
  audio_play = pkg "sha256-D/QMR8XjvFyY3cj3Mf+hYzHAG07lUeU9xAeHENcqAj4=" "audio_play";
  sound_play = pkg "sha256-BpFIb76UbtsnEKShYmIsTmvIQdwXQEFdlk4e8QnC2Rs=" "sound_play";
}
