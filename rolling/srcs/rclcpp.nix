{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rclcpp";
    rev = "b9b1468d15c7ddc697c079e6934d54f183294280";
    hash = "sha256-x4FIMSd+PcYaiYoz5/33EYKXHYNlLbHbhv6t07gWfmE=";
    name = "ros2-rclcpp-b9b1468d15c7ddc697c079e6934d54f183294280";
  });
in
{
  rclcpp = pkg "sha256-pBNDtM5I0ERU5QMbowffzwRM5L7cRlz0dYzWcC1h14Y=" "rclcpp";
  rclcpp_action = pkg "sha256-07e+HNZrc6RicI6Xh/6UggiW5luDd2qwTWFQ6/6rR8E=" "rclcpp_action";
  rclcpp_components = pkg "sha256-7GE/yvs3KfUPnoIczq/ZP8FeequLDZKkE0p4u+jiAmg=" "rclcpp_components";
  rclcpp_lifecycle = pkg "sha256-Z9hScQgqa/G9GW8CCZq60UtriBgmq2w+OgM6c063+Uo=" "rclcpp_lifecycle";
}
