{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "foxglove";
    repo = "schemas";
    rev = "b36014a3987ea81cf0184b7abb2d6ab6a3888688";
    hash = "sha256-U39aWXNMEW4pPCqAfBJ8v9Ekb04BzyrkgrUdvkLXnzc=";
    name = "foxglove-schemas-b36014a3987ea81cf0184b7abb2d6ab6a3888688";
  });
in
{
  foxglove_msgs = pkg "sha256-3dVBCN1pXr1bOClXRaeejZqUP2P9xlOYjnW6sn2nr70=" "ros_foxglove_msgs";
}
