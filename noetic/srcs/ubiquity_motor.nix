{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UbiquityRobotics";
    repo = "ubiquity_motor";
    rev = "489912c28e47ed9d2044d041cbfb52dc49d425a0";
    hash = "sha256-GPGKAhJSLV2lOs256QTlhVW6CsyqmbTYliyvAcZ5pgk=";
    name = "UbiquityRobotics-ubiquity_motor-489912c28e47ed9d2044d041cbfb52dc49d425a0";
  });
in
{
  ubiquity_motor = pkg "sha256-GPGKAhJSLV2lOs256QTlhVW6CsyqmbTYliyvAcZ5pgk=" ".";
}
