{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_logger_level";
    rev = "1e820ef8d39d1900628429f8612bb73b77158f74";
    hash = "sha256-ZlFtLtJEzzVaMfChzw9Dfcos5tOZA9gQMbsavfGkH+I=";
    name = "ros-visualization-rqt_logger_level-1e820ef8d39d1900628429f8612bb73b77158f74";
  });
in
{
  rqt_logger_level = pkg "sha256-ZlFtLtJEzzVaMfChzw9Dfcos5tOZA9gQMbsavfGkH+I=" ".";
}
