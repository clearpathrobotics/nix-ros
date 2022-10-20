{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "random_numbers";
    rev = "3f38f614db1c2947845927ba3537eee46d4b565a";
    hash = "sha256-rR1tpQTkZSQMbqwJShg9SunJI9LFubm7lNb9zXVatmU=";
    name = "ros-planning-random_numbers-3f38f614db1c2947845927ba3537eee46d4b565a";
  });
in
{
  random_numbers = pkg "sha256-rR1tpQTkZSQMbqwJShg9SunJI9LFubm7lNb9zXVatmU=" ".";
}
