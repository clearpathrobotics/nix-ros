{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "eclipse";
    repo = "paho.mqtt.cpp";
    rev = "2ff3d155dcd10564f1816675789284b4efd79eb7";
    hash = "sha256-agDj1D/F/WIjxcCnHZSVp7JbISEl7QnPwIw19Cleu40=";
    name = "eclipse-paho.mqtt.cpp-2ff3d155dcd10564f1816675789284b4efd79eb7";
  });
in
{
  paho-mqtt-cpp = pkg "sha256-agDj1D/F/WIjxcCnHZSVp7JbISEl7QnPwIw19Cleu40=" ".";
}
