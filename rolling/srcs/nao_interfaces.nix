{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ijnek";
    repo = "nao_interfaces";
    rev = "daf585577c509c9dd1bd36fb504f8f9ddcd00c99";
    hash = "sha256-rrpGqVTQZ23FdqGjnQ6Opn1HPFlBREc8UA7Jr2k1S64=";
    name = "ijnek-nao_interfaces-daf585577c509c9dd1bd36fb504f8f9ddcd00c99";
  });
in
{
  nao_command_msgs = pkg "sha256-c5MI9xmqIM6a6lV86cpezLUwbxtIfICdZYHA39QMhiw=" "nao_command_msgs";
  nao_sensor_msgs = pkg "sha256-ZUHpXdRXtKXTlh+vFBMwE8bIfT9g/5YI9Z/XDh7MvS0=" "nao_sensor_msgs";
}
