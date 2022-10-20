{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "wifi_ddwrt";
    rev = "459438bb482dcf25817e0bb56404f41ce967abbc";
    hash = "sha256-1N3MARRADUBUnj9lkJoMhxLMbc/qXOH5TbNni9c3mFk=";
    name = "ros-drivers-wifi_ddwrt-459438bb482dcf25817e0bb56404f41ce967abbc";
  });
in
{
  wifi_ddwrt = pkg "sha256-1N3MARRADUBUnj9lkJoMhxLMbc/qXOH5TbNni9c3mFk=" ".";
}
