{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "machinekoder";
    repo = "ros_pytest";
    rev = "176380b321098c4506157e018d00b9d908131eb2";
    hash = "sha256-agkNE/FKVIiLn+wT/Zpl1SCfPDtGwA4axf3KPGjGAc4=";
    name = "machinekoder-ros_pytest-176380b321098c4506157e018d00b9d908131eb2";
  });
in
{
  ros_pytest = pkg "sha256-agkNE/FKVIiLn+wT/Zpl1SCfPDtGwA4axf3KPGjGAc4=" ".";
}
