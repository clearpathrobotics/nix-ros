{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "unique_identifier_msgs";
    rev = "521268812b7078e6a61880e70ff79c39b630744c";
    hash = "sha256-FqmSJTXKhYJNGFfYzan04aouvqn5hmHygfypePyo4JM=";
    name = "ros2-unique_identifier_msgs-521268812b7078e6a61880e70ff79c39b630744c";
  });
in
{
  unique_identifier_msgs = pkg "sha256-FqmSJTXKhYJNGFfYzan04aouvqn5hmHygfypePyo4JM=" ".";
}
