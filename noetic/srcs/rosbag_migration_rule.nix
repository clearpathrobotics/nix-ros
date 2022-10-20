{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "rosbag_migration_rule";
    rev = "2269b623b677903c3d775f304ec941f042e880ab";
    hash = "sha256-yHxxNHf9BHWP0ZS9TW1uM8Ez7amOze5jLopXTzMeTAQ=";
    name = "ros-rosbag_migration_rule-2269b623b677903c3d775f304ec941f042e880ab";
  });
in
{
  rosbag_migration_rule = pkg "sha256-yHxxNHf9BHWP0ZS9TW1uM8Ez7amOze5jLopXTzMeTAQ=" ".";
}
