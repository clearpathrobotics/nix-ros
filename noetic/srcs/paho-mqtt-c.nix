{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "eclipse";
    repo = "paho.mqtt.c";
    rev = "7c0735a5f02052c275baddb4f01f1f4dabdfed20";
    hash = "sha256-OvWDdUbUB1wFcyajBBSZHj0N6iERGcBeOwkP2Ovveco=";
    name = "eclipse-paho.mqtt.c-7c0735a5f02052c275baddb4f01f1f4dabdfed20";
  });
in
{
  colcon-distro--eclipse-paho.mqtt.c--u0qso52z = pkg "sha256-OvWDdUbUB1wFcyajBBSZHj0N6iERGcBeOwkP2Ovveco=" ".";
}
