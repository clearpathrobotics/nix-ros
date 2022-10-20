{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "hatchbed";
    repo = "log_view";
    rev = "c7b94a30e00f0d2bcd5d38c4742fc1c6526e4c37";
    hash = "sha256-INcl1d/x9lE9k+hIWrBXYRixV98xFvxr4B5LQORej7c=";
    name = "hatchbed-log_view-c7b94a30e00f0d2bcd5d38c4742fc1c6526e4c37";
  });
in
{
  log_view = pkg "sha256-INcl1d/x9lE9k+hIWrBXYRixV98xFvxr4B5LQORej7c=" ".";
}
