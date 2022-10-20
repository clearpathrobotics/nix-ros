{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "RobotWebTools";
    repo = "web_video_server";
    rev = "4ab9568b34a66b9517b58f8161a63fdee8bf1677";
    hash = "sha256-2sBt49EIU6SAPd6Lr68t1A532aBaVC5KrZkw/Znxr4s=";
    name = "RobotWebTools-web_video_server-4ab9568b34a66b9517b58f8161a63fdee8bf1677";
  });
in
{
  web_video_server = pkg "sha256-2sBt49EIU6SAPd6Lr68t1A532aBaVC5KrZkw/Znxr4s=" ".";
}
