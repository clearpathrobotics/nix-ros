{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "foxglove";
    repo = "schemas";
    rev = "0dcb4176e9e12a96e90cea497bcfad48b6301155";
    hash = "sha256-RfE7MDttfhYLMOPrts8I0oHPGGsgbFY2sYZhGVa9w10=";
    name = "foxglove-schemas-0dcb4176e9e12a96e90cea497bcfad48b6301155";
  });
in
{
  foxglove_msgs = pkg "sha256-3dVBCN1pXr1bOClXRaeejZqUP2P9xlOYjnW6sn2nr70=" "ros_foxglove_msgs";
}
