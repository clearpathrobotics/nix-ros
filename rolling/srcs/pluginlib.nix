{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "pluginlib";
    rev = "b0388a8b8aa50170bcfbbfbf6da1c54dad6532da";
    hash = "sha256-CAXQWUWgoIp3ByIrhCJAdBuFr+Er/nvZx7U9XE+SIfM=";
    name = "ros-pluginlib-b0388a8b8aa50170bcfbbfbf6da1c54dad6532da";
  });
in
{
  pluginlib = pkg "sha256-GnQonedocJAzqRn6N+CRmPjNCOt66kpMpsgutiofqkw=" "pluginlib";
}
