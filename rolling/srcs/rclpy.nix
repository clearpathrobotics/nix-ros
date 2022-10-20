{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rclpy";
    rev = "e18084fa421fa54a3a6793909d128046b2b5a08e";
    hash = "sha256-MMYv4VpQbkMnpseaeyO8jkVESFxwvWof6AfYNnrl0K4=";
    name = "ros2-rclpy-e18084fa421fa54a3a6793909d128046b2b5a08e";
  });
in
{
  rclpy = pkg "sha256-Xl9tEfPJIZgnGou2iPQQoikeovYG8mmQW5ACjsZGkW0=" "rclpy";
}
