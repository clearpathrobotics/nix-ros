{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ika-rwth-aachen";
    repo = "mqtt_client";
    rev = "f9b53dad6af7ed15b1a1303bacb6c10055358d86";
    hash = "sha256-jb2Hutmq5GK36D8ItEoVyk1529qkhOdS1kO6qxwx0Vk=";
    name = "ika-rwth-aachen-mqtt_client-f9b53dad6af7ed15b1a1303bacb6c10055358d86";
  });
in
{
  mqtt_client = pkg "sha256-jb2Hutmq5GK36D8ItEoVyk1529qkhOdS1kO6qxwx0Vk=" ".";
}
