{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "dynamixel-workbench-msgs";
    rev = "f0ec40c0efe61200177556dd2ca3fdffef42e19d";
    hash = "sha256-+MXPjetzAv8Zq+m+myFom/4iGTzC2JaAbFVJwqmuAIc=";
    name = "ROBOTIS-GIT-dynamixel-workbench-msgs-f0ec40c0efe61200177556dd2ca3fdffef42e19d";
  });
in
{
  dynamixel_workbench_msgs = pkg "sha256-tHd7uSD9J6bAJi1clistYePM0USmGEGyj+MeQm/iJOQ=" "dynamixel_workbench_msgs";
}
