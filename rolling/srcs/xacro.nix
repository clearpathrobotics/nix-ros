{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "xacro";
    rev = "344e25b49f3a01a2389f0f30304ed667d68a82bd";
    hash = "sha256-Ryu3PPLkKpM9p0mDbslWpyy+ejy7eEMU2O6zohjoruM=";
    name = "ros-xacro-344e25b49f3a01a2389f0f30304ed667d68a82bd";
  });
in
{
  xacro = pkg "sha256-Ryu3PPLkKpM9p0mDbslWpyy+ejy7eEMU2O6zohjoruM=" ".";
}
