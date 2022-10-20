{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "LeoRover";
    repo = "leo_simulator";
    rev = "ed52d5ac8d1aa43d80cc87ca60dbfd4055e07760";
    hash = "sha256-uRu0UvJjhS9lcEBu4AdttDSZ/IqpMTSw8ak1J3KQK/M=";
    name = "LeoRover-leo_simulator-ed52d5ac8d1aa43d80cc87ca60dbfd4055e07760";
  });
in
{
  leo_gazebo = pkg "sha256-pr23p7Dz1SI8hVz1u8OWbhDHOUl0bK+YaY6TtN8JWCY=" "leo_gazebo";
  leo_gazebo_plugins = pkg "sha256-G7Ka1HmNoZtk2Rat2nAKH6GTf18K7M/XSWoumgIB1YU=" "leo_gazebo_plugins";
  leo_gazebo_worlds = pkg "sha256-iuAv5uzTHs+F/TWJRzGaeuLy8x20vxmY6h+ec+q1PWA=" "leo_gazebo_worlds";
  leo_simulator = pkg "sha256-ybKYtm1ZPTXRS1NNvFssjfu3hLxpUpurkg8BFt23SL0=" "leo_simulator";
}
