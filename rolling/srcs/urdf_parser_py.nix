{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "urdf_parser_py";
    rev = "a761315753b6934e596696cb1ccf336ae2153ce7";
    hash = "sha256-yWcN0olPzl+u0braryeavp+hQaZZuWb5bdBUHfXcL8k=";
    name = "ros-urdf_parser_py-a761315753b6934e596696cb1ccf336ae2153ce7";
  });
in
{
  urdfdom_py = pkg "sha256-yWcN0olPzl+u0braryeavp+hQaZZuWb5bdBUHfXcL8k=" ".";
}
