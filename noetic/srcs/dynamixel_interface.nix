{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "csiro-robotics";
    repo = "dynamixel_interface";
    rev = "f11adeaf974c104c793f786ee9035950eb89def3";
    hash = "sha256-cQykausaTcSyngGD6BFLFr0C+/UTXQVWlecid6PBj0Y=";
    name = "csiro-robotics-dynamixel_interface-f11adeaf974c104c793f786ee9035950eb89def3";
  });
in
{
  dynamixel_interface = pkg "sha256-cQykausaTcSyngGD6BFLFr0C+/UTXQVWlecid6PBj0Y=" ".";
}
