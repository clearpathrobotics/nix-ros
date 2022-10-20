{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "astuff";
    repo = "network_interface";
    rev = "769fa55261df07f265030ef08843c8a1983555a2";
    hash = "sha256-LUu+zztyrbYZOMGz4naCkE/FBu2Me2+6VbWFnTUidM8=";
    name = "astuff-network_interface-769fa55261df07f265030ef08843c8a1983555a2";
  });
in
{
  network_interface = pkg "sha256-LUu+zztyrbYZOMGz4naCkE/FBu2Me2+6VbWFnTUidM8=" ".";
}
