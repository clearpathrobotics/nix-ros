{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "ament_cmake_ros";
    rev = "f4a2bcde898b7c076beefb410989294a92ee76c3";
    hash = "sha256-FXg1KyvUNNxOzcmljRQxr3Y2keYzs+kb3DmiFvmPoPA=";
    name = "ros2-ament_cmake_ros-f4a2bcde898b7c076beefb410989294a92ee76c3";
  });
in
{
  ament_cmake_ros = pkg "sha256-Ui3k36A3SgoqJ3zmO24ZLEmBim4jJDmey0pnqXz4q7s=" "ament_cmake_ros";
  domain_coordinator = pkg "sha256-U6BAOuEyQxvGMWEL2xXxsbI4fkSy3GLZ2Lag8pVXqD8=" "domain_coordinator";
}
