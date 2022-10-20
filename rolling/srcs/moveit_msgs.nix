{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "moveit_msgs";
    rev = "35b93c86e8efdaa2eee6895d540ee42a6041261d";
    hash = "sha256-5z4CzjSIDmXEOcDSxlTJKLDsd2/2p0knn8NU3jzKXk8=";
    name = "ros-planning-moveit_msgs-35b93c86e8efdaa2eee6895d540ee42a6041261d";
  });
in
{
  moveit_msgs = pkg "sha256-5z4CzjSIDmXEOcDSxlTJKLDsd2/2p0knn8NU3jzKXk8=" ".";
}
