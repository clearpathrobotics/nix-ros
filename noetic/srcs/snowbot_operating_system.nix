{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "snowbot_operating_system";
    rev = "545e9378dbe2ef67540ba27926a154e9f2df85e8";
    hash = "sha256-GLIthTAuyBcsrH/jceuFso5nD1MDyhQh9EvmsSH6dpY=";
    name = "PickNikRobotics-snowbot_operating_system-545e9378dbe2ef67540ba27926a154e9f2df85e8";
  });
in
{
  snowbot_operating_system = pkg "sha256-GLIthTAuyBcsrH/jceuFso5nD1MDyhQh9EvmsSH6dpY=" ".";
}
