{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "KumarRobotics";
    repo = "ublox";
    rev = "730b45b67445a44106fed4b921318d4eb1c2f76b";
    hash = "sha256-hukN9HeirKXjN18rOzrmZ6Y+4lRpggQpCHfm4McU0Ok=";
    name = "KumarRobotics-ublox-730b45b67445a44106fed4b921318d4eb1c2f76b";
  });
in
{
  ublox = pkg "sha256-KV+UOg3Tp35zJF1gAebZLzZ0Y8kF4iIutoN8TxCuB5o=" "ublox";
  ublox_gps = pkg "sha256-s861J8qv5USga8EjgWzEcVb4w2woPqoUwV2OJKO1evA=" "ublox_gps";
  ublox_msg_filters = pkg "sha256-7JVQndpvcXpFhGYCK8/RigMiJLJuZv48wn2pQfFv80Y=" "ublox_msg_filters";
  ublox_msgs = pkg "sha256-y4X9Wo5PqX2wceJHR0+z56ytE2MAr+jxLVkiyLR5UlI=" "ublox_msgs";
  ublox_serialization = pkg "sha256-86pPiwfhUmT33cV7GPoOGwVNhrbCDmHDRbzF94Uj2YE=" "ublox_serialization";
}
