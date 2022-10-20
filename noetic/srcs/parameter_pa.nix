{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tuc-proaut";
    repo = "ros_parameter";
    rev = "76f95da0a558efd4c3bed8da0133c91fa1da4303";
    hash = "sha256-PNshr226dVoMLaaiXW4gtHy7SvV6V/wTpKHV8m4UTQk=";
    name = "tuc-proaut-ros_parameter-76f95da0a558efd4c3bed8da0133c91fa1da4303";
  });
in
{
  parameter_pa = pkg "sha256-PNshr226dVoMLaaiXW4gtHy7SvV6V/wTpKHV8m4UTQk=" ".";
}
