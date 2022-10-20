{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "open_manipulator_msgs";
    rev = "f5a33ece4c09d92b00dbd7665c92f85ce4d6cff6";
    hash = "sha256-rxK3Xko8QWujTwgaue3p/eGzNa/ZTzJAvdk7WNkySMw=";
    name = "ROBOTIS-GIT-open_manipulator_msgs-f5a33ece4c09d92b00dbd7665c92f85ce4d6cff6";
  });
in
{
  open_manipulator_msgs = pkg "sha256-rxK3Xko8QWujTwgaue3p/eGzNa/ZTzJAvdk7WNkySMw=" ".";
}
