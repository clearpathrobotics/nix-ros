{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "RethinkRobotics-opensource";
    repo = "gennodejs";
    rev = "19d224c6158a1411a7b3f576e885fb8e8a9195d6";
    hash = "sha256-ixRsT9nnEXqvXnkK6X3tiZdDXUv5Dvsozn+aUpOXCrM=";
    name = "RethinkRobotics-opensource-gennodejs-19d224c6158a1411a7b3f576e885fb8e8a9195d6";
  });
in
{
  gennodejs = pkg "sha256-ixRsT9nnEXqvXnkK6X3tiZdDXUv5Dvsozn+aUpOXCrM=" ".";
}
