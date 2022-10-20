{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ros_ign";
    rev = "e2fe0da42c748537fe2e2dd0a3f1cc93732f9ef6";
    hash = "sha256-qkB8e89cNAtO5/Zw7YvjsZ4XhVZG5ifUHRmR2RBN5hY=";
    name = "ignitionrobotics-ros_ign-e2fe0da42c748537fe2e2dd0a3f1cc93732f9ef6";
  });
in
{
  ros_gz = pkg "sha256-NwzV8B2MDa/UN5rru7r7z9MQfMOGApmMd2JB/CenrKE=" "ros_gz";
  ros_gz_bridge = pkg "sha256-dn/rKZpyGBs+HTqrbnV7cDslyQEx52QHNfjednVkmO8=" "ros_gz_bridge";
  ros_gz_image = pkg "sha256-ueyjMLTnWLVBC0eu53YEbMSOy+tc30I59/ddC+0n4NU=" "ros_gz_image";
  ros_gz_interfaces = pkg "sha256-oYdsrNTrKPY2RhyPBcZAO+Y5BR6YAL/schjRSFaOomo=" "ros_gz_interfaces";
  ros_gz_sim = pkg "sha256-FIz4tr9rCegZUhGoA4uQnQlcQFIf38+sbUn445bcz7A=" "ros_gz_sim";
  ros_gz_sim_demos = pkg "sha256-6IzKAZzNk4c9wdYJQcDj5wsADLyGelrdiUCd2P1KvTY=" "ros_gz_sim_demos";
}
