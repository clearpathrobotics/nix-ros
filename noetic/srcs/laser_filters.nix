{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "laser_filters";
    rev = "ab52d3f86922dfb4768003f66827ea4ab35e94ca";
    hash = "sha256-r/wpyWQMd3BGnW67WopV+MAK6wbB3443RhpU7hl5SQk=";
    name = "ros-perception-laser_filters-ab52d3f86922dfb4768003f66827ea4ab35e94ca";
  });
in
{
  laser_filters = pkg "sha256-r/wpyWQMd3BGnW67WopV+MAK6wbB3443RhpU7hl5SQk=" ".";
}
