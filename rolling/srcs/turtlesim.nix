{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "ros_tutorials";
    rev = "1838168c01d14da1ba9528bdc64bdfb40ddfcf68";
    hash = "sha256-mOJQw1FW0VVbl3syZ7+eHfcw9uXksS3N60oxk6lIZ3c=";
    name = "ros-ros_tutorials-1838168c01d14da1ba9528bdc64bdfb40ddfcf68";
  });
in
{
  turtlesim = pkg "sha256-QSpCdO40Vz2iZ0bmwtzikSPQdurC/h7YDtDS3LZdP/8=" "turtlesim";
}
