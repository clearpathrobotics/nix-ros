{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "TUC-ProAut";
    repo = "ros_radar";
    rev = "a81b80b4568b777838c7c8851f99562d6cd932da";
    hash = "sha256-/QUdvYTfsi9QwtW70S+xR9SDuMCo8n9w1A1Jt2mOxVg=";
    name = "TUC-ProAut-ros_radar-a81b80b4568b777838c7c8851f99562d6cd932da";
  });
in
{
  radar_pa = pkg "sha256-gP0J/rr9fET2gj8Qr1C6IC4E3jZaRU++jKy4F4oU968=" "radar_pa";
  radar_pa_msgs = pkg "sha256-LWhINdAl+5PbbX/zygN9ae9vNXUJRL4By1cSRLCgvlw=" "radar_pa_msgs";
}
