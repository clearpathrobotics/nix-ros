{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "iron-ox";
    repo = "fadecandy_ros";
    rev = "45189bd37f5befad292749ad17f479d6cb548589";
    hash = "sha256-MugXk7K4ky3s/Lb0ECi5ePRbR4zVmi2ytwwOmUFMe+A=";
    name = "iron-ox-fadecandy_ros-45189bd37f5befad292749ad17f479d6cb548589";
  });
in
{
  fadecandy_driver = pkg "sha256-KjXoanwjRLMiPl78FpQ3TzhmW5ET2emuUs6IDKvYA+Y=" "fadecandy_driver";
  fadecandy_msgs = pkg "sha256-T74dvtFooZaTz/RrBNbnnkYX6G4m3qBp40Y3zPu27Nw=" "fadecandy_msgs";
}
