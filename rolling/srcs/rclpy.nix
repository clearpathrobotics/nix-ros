{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rclpy";
    rev = "3d8547ad80d9fa72335b9ee0c105a80fcaf275c1";
    hash = "sha256-iiGa+jCM5nZ6Y1Mr/D7j1HiddAxCF9gG8aaGDXWTDDI=";
    name = "ros2-rclpy-3d8547ad80d9fa72335b9ee0c105a80fcaf275c1";
  });
in
{
  rclpy = pkg "sha256-ozurIFPvwHQKxx5iCg6qV80bEGeJgMxPq5OvwAmRDA8=" "rclpy";
}
