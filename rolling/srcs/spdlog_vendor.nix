{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "spdlog_vendor";
    rev = "5d89e00eb70c1efdbfb99b43c95092bfb5be480c";
    hash = "sha256-X5xP8PWVJ9fH9q64WIjqEFkPRVrAnOoujJYjW03YJ2o=";
    name = "ros2-spdlog_vendor-5d89e00eb70c1efdbfb99b43c95092bfb5be480c";
  });
in
{
  spdlog_vendor = pkg "sha256-X5xP8PWVJ9fH9q64WIjqEFkPRVrAnOoujJYjW03YJ2o=" ".";
}
