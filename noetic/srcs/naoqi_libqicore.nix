{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-naoqi";
    repo = "libqicore";
    rev = "15504334497d6c34c87c5b1344b9c69575299059";
    hash = "sha256-8JAXRm8TTDcjJ1qSe6IStoAQibdrwvZnWbg6pdlYFVc=";
    name = "ros-naoqi-libqicore-15504334497d6c34c87c5b1344b9c69575299059";
  });
in
{
  naoqi_libqicore = pkg "sha256-8JAXRm8TTDcjJ1qSe6IStoAQibdrwvZnWbg6pdlYFVc=" ".";
}
