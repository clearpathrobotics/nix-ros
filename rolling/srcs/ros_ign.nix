{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ros_ign";
    rev = "d0ef0d629ac03302398932f098e319ce54f30bce";
    hash = "sha256-HmmwrDuqoKFlcsN4zihRNqySvwXmaLjy346kV9DcTQo=";
    name = "ignitionrobotics-ros_ign-d0ef0d629ac03302398932f098e319ce54f30bce";
  });
in
{
  ros_gz = pkg "sha256-NwzV8B2MDa/UN5rru7r7z9MQfMOGApmMd2JB/CenrKE=" "ros_gz";
  ros_gz_bridge = pkg "sha256-dn/rKZpyGBs+HTqrbnV7cDslyQEx52QHNfjednVkmO8=" "ros_gz_bridge";
  ros_gz_image = pkg "sha256-ueyjMLTnWLVBC0eu53YEbMSOy+tc30I59/ddC+0n4NU=" "ros_gz_image";
  ros_gz_interfaces = pkg "sha256-KwDQ8htTnwENSU4gR720GsX6C7kjKhU01fGidNPimfk=" "ros_gz_interfaces";
  ros_gz_sim = pkg "sha256-FIz4tr9rCegZUhGoA4uQnQlcQFIf38+sbUn445bcz7A=" "ros_gz_sim";
  ros_gz_sim_demos = pkg "sha256-hdFIBP0/LIIY22NaxPTmt8LzAsSGGNeVEsviG/WrHD8=" "ros_gz_sim_demos";
}
