{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "splintered-reality";
    repo = "py_trees_msgs";
    rev = "b431dc580c3b0c1447592712552202bb288a2b2c";
    hash = "sha256-8e+2ERs896A54sFnzQzmCmDLLiqhmGns2Nxf/sl/v+A=";
    name = "splintered-reality-py_trees_msgs-b431dc580c3b0c1447592712552202bb288a2b2c";
  });
in
{
  py_trees_msgs = pkg "sha256-8e+2ERs896A54sFnzQzmCmDLLiqhmGns2Nxf/sl/v+A=" ".";
}
