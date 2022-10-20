{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ctu-vras";
    repo = "rosmsg_cpp";
    rev = "f0e8c02a9bf13bb9d4ff88e01294ad885e7c96ee";
    hash = "sha256-78DbURdOPEKrEXwGtg/MUxsbNesIKpCn1DjqSh4q8No=";
    name = "ctu-vras-rosmsg_cpp-f0e8c02a9bf13bb9d4ff88e01294ad885e7c96ee";
  });
in
{
  rosmsg_cpp = pkg "sha256-78DbURdOPEKrEXwGtg/MUxsbNesIKpCn1DjqSh4q8No=" ".";
}
