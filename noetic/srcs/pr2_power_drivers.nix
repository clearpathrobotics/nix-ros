{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "pr2_power_drivers";
    rev = "9e5e7fc71545427b4007897eaa8c26c4e31681ec";
    hash = "sha256-HHuG64zqHJthhQIaZDDkIHcG7NA781SmOk8tngCb+dE=";
    name = "pr2-pr2_power_drivers-9e5e7fc71545427b4007897eaa8c26c4e31681ec";
  });
in
{
  ocean_battery_driver = pkg "sha256-/IRMaNKq6Hg98vLz+6ABJcFeVqUY//kfSXCWY73Zl90=" "ocean_battery_driver";
  power_monitor = pkg "sha256-4JqY6AFxg3fz+ah+zoiMDPylpsdSFxVwgwEhK48Jsig=" "power_monitor";
  pr2_power_board = pkg "sha256-GGL3dANBXvhWGk9Ez1uoPPysLrohUg3Tegg+PA7RChI=" "pr2_power_board";
  pr2_power_drivers = pkg "sha256-OrfaN+SDleM4BID1riMS9jyppGc8inYERba+HoZFW6Q=" "pr2_power_drivers";
}
