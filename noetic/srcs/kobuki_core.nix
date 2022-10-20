{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "yujinrobot";
    repo = "kobuki_core";
    rev = "bee80ecd9718a55be8c1abe3b2170820099022a6";
    hash = "sha256-B5yBeKSFXk8c6u4Y+/XbF+c/xMaSUcEsJvQJy2eAVAA=";
    name = "yujinrobot-kobuki_core-bee80ecd9718a55be8c1abe3b2170820099022a6";
  });
in
{
  kobuki_core = pkg "sha256-FJ6sT/26Sul/nwI17KnFDkFKz7eoZIwu1pA/RbbhmbE=" "kobuki_core";
  kobuki_dock_drive = pkg "sha256-PMO0ltNoFcG749gsrQMOB2mQ75OZ+aX8SbGGbvlWtMQ=" "kobuki_dock_drive";
  kobuki_driver = pkg "sha256-YIV+FqYpqvW/7VyN96n66Gsg627/6+Xtdf2jfv9OtCo=" "kobuki_driver";
  kobuki_ftdi = pkg "sha256-qhaG8NdokSY8znlKOo7E6dv4MzhL5Xe7ruWfZ5rAel0=" "kobuki_ftdi";
}
