{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stonier";
    repo = "rqt_py_trees";
    rev = "74f5cd108396c0fb46331910730f77597e14326d";
    hash = "sha256-Tveaxsi4gwD3A9j9SoBsOvj99PqlO8/fbtnsidxOyAk=";
    name = "stonier-rqt_py_trees-74f5cd108396c0fb46331910730f77597e14326d";
  });
in
{
  rqt_py_trees = pkg "sha256-Tveaxsi4gwD3A9j9SoBsOvj99PqlO8/fbtnsidxOyAk=" ".";
}
