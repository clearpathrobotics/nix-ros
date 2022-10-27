{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rclcpp";
    rev = "85c0af4fa06264a6b92a519197774c0e10b9606e";
    hash = "sha256-Knh7WCz7u7ZuF1+HnudNQ309cpH0XCaTEtjA9i4p3GY=";
    name = "ros2-rclcpp-85c0af4fa06264a6b92a519197774c0e10b9606e";
  });
in
{
  rclcpp = pkg "sha256-DYTMgEn+YqBF9b1GK2dtCtHhWZMFJjRIRbEuKja/bmM=" "rclcpp";
  rclcpp_action = pkg "sha256-07e+HNZrc6RicI6Xh/6UggiW5luDd2qwTWFQ6/6rR8E=" "rclcpp_action";
  rclcpp_components = pkg "sha256-7GE/yvs3KfUPnoIczq/ZP8FeequLDZKkE0p4u+jiAmg=" "rclcpp_components";
  rclcpp_lifecycle = pkg "sha256-3jyykWn927kjbuiCwwAoG5rFTHvLL4IYvTnBikTRpTw=" "rclcpp_lifecycle";
}
