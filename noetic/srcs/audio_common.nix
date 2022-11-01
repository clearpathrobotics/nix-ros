{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "audio_common";
    rev = "ea45179ca7e1cad76f096318166c291a13378a67";
    hash = "sha256-2bBxLr6AHbKDH3XEb/iF93sV1ITyTeAK4wklUAwOIkU=";
    name = "ros-drivers-audio_common-ea45179ca7e1cad76f096318166c291a13378a67";
  });
in
{
  audio_capture = pkg "sha256-zSVKHXjrLA1T94ro88FnaBWGaRTMHUawiWCAdhRQeyM=" "audio_capture";
  audio_common = pkg "sha256-fY2muPyxaboZurHho2WPDOSPircqkEBRhwNDQg6/zwE=" "audio_common";
  audio_common_msgs = pkg "sha256-7BoGkNR2U4PTBxEWbwCkf2w/jP8Pe9Bb94AN3xBtKeg=" "audio_common_msgs";
  audio_play = pkg "sha256-I2qazSI7/6vn9d+/JHbpgAQRS7PxMCPNLK4iZvyQYKQ=" "audio_play";
  sound_play = pkg "sha256-BpFIb76UbtsnEKShYmIsTmvIQdwXQEFdlk4e8QnC2Rs=" "sound_play";
}
