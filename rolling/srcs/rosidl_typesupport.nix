{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosidl_typesupport";
    rev = "9fe935124b2a4f5c662f241850c03223855e8fc6";
    hash = "sha256-1rlmPjKtwLVdNjT9Qt6lJ4OzebrjRoeHxO/B/u8lgNw=";
    name = "ros2-rosidl_typesupport-9fe935124b2a4f5c662f241850c03223855e8fc6";
  });
in
{
  rosidl_typesupport_c = pkg "sha256-LIQEF2qwCBazmAhpThKkHd12kqlgcrTlGfx6viWa4XA=" "rosidl_typesupport_c";
  rosidl_typesupport_cpp = pkg "sha256-vPL3jW3+1VVWkOhlsyTn7zjKHWSn14EqP2wgqdPctt8=" "rosidl_typesupport_cpp";
}
