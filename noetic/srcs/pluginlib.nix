{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "pluginlib";
    rev = "5fb0f10d2d354aad5d245c806d61dfa8d3863e64";
    hash = "sha256-7m9NDdZ7QjVzTdI1ovjcb6Yrv6JH6TPhUtigz7K8HKY=";
    name = "ros-pluginlib-5fb0f10d2d354aad5d245c806d61dfa8d3863e64";
  });
in
{
  pluginlib = pkg "sha256-e6i9Tj5a+WMRHUzFa/5uhaKCCmoUYBBSIRA+KfgqFU0=" "pluginlib";
}
