{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "console_bridge_vendor";
    rev = "90899400d474ff0897f8315f44d138bdbc1b7130";
    hash = "sha256-LB/wxdFo1K8D5mSehtYEscBnx/KhfoJNy6u1LfQ0JhY=";
    name = "ros2-console_bridge_vendor-90899400d474ff0897f8315f44d138bdbc1b7130";
  });
in
{
  console_bridge_vendor = pkg "sha256-LB/wxdFo1K8D5mSehtYEscBnx/KhfoJNy6u1LfQ0JhY=" ".";
}
