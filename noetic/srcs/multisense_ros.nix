{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "carnegierobotics";
    repo = "multisense_ros";
    rev = "9a384cb9ce70fe4b2bfad83fd58360b1c1839b20";
    hash = "sha256-D57L37kLa9MsZlQU+wUip5toqH4ZwUF7HgY6KEiDlWc=";
    name = "carnegierobotics-multisense_ros-9a384cb9ce70fe4b2bfad83fd58360b1c1839b20";
  });
in
{
  multisense = pkg "sha256-fnpjUeQlJ0cNsMsOy6ueAezod7gJbHajYu33RrMNVlU=" "multisense";
  multisense_bringup = pkg "sha256-KxeHwwLHWO2+flv8oo0JAXj6DzDx4dl0wMPr5n4XF/0=" "multisense_bringup";
  multisense_cal_check = pkg "sha256-upOl7SEFRQKvS+QLg65hyyAJAt7SYAkQSe8RdwNexLw=" "multisense_cal_check";
  multisense_description = pkg "sha256-/E85CfpMUO2TWxUcBiBU52XsLgw2cstfTfdtK0+vPIg=" "multisense_description";
  multisense_lib = pkg "sha256-l3Z71C3ksLqLGRZVyt1ETLE3uzsRk07Bh6DtNYyxG+k=" "multisense_lib";
  multisense_ros = pkg "sha256-jX7WKykH1qq83tHKNmwPs4ru4DUzfKhGwCGuTfAFqDg=" "multisense_ros";
}
