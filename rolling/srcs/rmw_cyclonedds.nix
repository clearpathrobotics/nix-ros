{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rmw_cyclonedds";
    rev = "5b67ae471ba81560b51bac6b1dacfbf271e0dd22";
    hash = "sha256-Vui3yDWKQGZEvNKlXiksc5TB0zRdccSo5ENS7zUJqls=";
    name = "ros2-rmw_cyclonedds-5b67ae471ba81560b51bac6b1dacfbf271e0dd22";
  });
in
{
  rmw_cyclonedds_cpp = pkg "sha256-GYp7OgsdmVMRDLmj7vflSePgOC+y3BqFbkGKJBsfmVo=" "rmw_cyclonedds_cpp";
}
