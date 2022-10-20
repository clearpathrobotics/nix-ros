{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pantor";
    repo = "ruckig";
    rev = "612eb3cb6bc8699c48cf49170d136dfedb469ab2";
    hash = "sha256-kW8tLUUv4qJPmJ/i+flbu/GnqZYL4vmBaNem6f7zO+E=";
    name = "pantor-ruckig-612eb3cb6bc8699c48cf49170d136dfedb469ab2";
  });
in
{
  ruckig = pkg "sha256-kW8tLUUv4qJPmJ/i+flbu/GnqZYL4vmBaNem6f7zO+E=" ".";
}
