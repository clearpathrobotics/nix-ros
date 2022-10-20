{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-naoqi";
    repo = "naoqi_driver";
    rev = "b4aad981edaebaefefcca80d5e114d375fb6dcce";
    hash = "sha256-BR5jncIN9O9Dvn3p+BKeyTUGmRzBtUC8HmY4RBt8VCc=";
    name = "ros-naoqi-naoqi_driver-b4aad981edaebaefefcca80d5e114d375fb6dcce";
  });
in
{
  naoqi_driver = pkg "sha256-BR5jncIN9O9Dvn3p+BKeyTUGmRzBtUC8HmY4RBt8VCc=" ".";
}
