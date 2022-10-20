{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "novatel";
    repo = "novatel_oem7_driver";
    rev = "dc49e28723ce79b8ea71b61bc4a104b003f00b97";
    hash = "sha256-keZBVt0uvg3QyQ7d8P8IZ36X0GodHgnVQFOLQoofn4E=";
    name = "novatel-novatel_oem7_driver-dc49e28723ce79b8ea71b61bc4a104b003f00b97";
  });
in
{
  novatel_oem7_driver = pkg "sha256-bL2eGGAdWoaxJ/qzQiTcRZAp87F/W4GQ6N3eYFOK8Gg=" "src/novatel_oem7_driver";
  novatel_oem7_msgs = pkg "sha256-jHMkIe4gTMdUXXl5KD772cHLkQz8EWIuv3fQW9gWi1c=" "src/novatel_oem7_msgs";
}
