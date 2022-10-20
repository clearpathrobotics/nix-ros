{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "geometry2";
    rev = "382e5ca5ff5395e68cd39b37b3a7527a739b4843";
    hash = "sha256-YzSdLSHoW+hfOgWNiOck31W4Y4lO4QZpNUlZTZQkMyQ=";
    name = "ros-geometry2-382e5ca5ff5395e68cd39b37b3a7527a739b4843";
  });
in
{
  geometry2 = pkg "sha256-ZfRbH+nh51KJIpHdp6zX+I4d9DBMTk92uFaeNAKzGN4=" "geometry2";
  test_tf2 = pkg "sha256-ZNkzs7VJGvdt4HpaphkfjKKkRHiaMKzHPCHi6e/99Gc=" "test_tf2";
  tf2 = pkg "sha256-wxtpJcU7170GGkfCR06Qqh2am19oNAB2m7DWZFh8bKI=" "tf2";
  tf2_bullet = pkg "sha256-/4t69kkZ7FTEPyqHQguSp063/HZM/gt1kaUrije0jEA=" "tf2_bullet";
  tf2_eigen = pkg "sha256-mnj+R28+Wpu9orbD6Z9nIpBjeJ8uA9KQo1/8A11rlxM=" "tf2_eigen";
  tf2_geometry_msgs = pkg "sha256-wUzJ6Tqql5eU8iL/w1lSUwZ5h43JcQUDAkmjJ8ue3C4=" "tf2_geometry_msgs";
  tf2_kdl = pkg "sha256-hBpeiPyelBr8j/B7H9w8JN4aCfPQVKLVqp3RYDCQcBo=" "tf2_kdl";
  tf2_msgs = pkg "sha256-vM04W6xWq802JCrG1Aiiah+ufLrL7R54nzwV2BDbzi4=" "tf2_msgs";
  tf2_py = pkg "sha256-3oA7k8UHUCkbP6XzZ69/vZJ12YiZUjGyXWUjyZQzeAU=" "tf2_py";
  tf2_ros = pkg "sha256-sEe79LiUwwmlwrALXZyAnWxzEyzz3A4rfzpTkBO//Vg=" "tf2_ros";
  tf2_sensor_msgs = pkg "sha256-Yil8ztT/p3d42S6ltN93n9BZPhNi+bZQgHsqDXYcVnM=" "tf2_sensor_msgs";
  tf2_tools = pkg "sha256-EE4PW9bQ5iFHtQW9qBYJ7wN5r42EYqBgQ1a8n5lN+iI=" "tf2_tools";
}
