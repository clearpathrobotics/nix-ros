{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "clearpathrobotics";
    repo = "wireless";
    rev = "018ed4706d02dab79108db6abc4239fb141cd21d";
    hash = "sha256-PvY/jEQAharB8YD6xQWIDT0h4H0kDi2wsLVdJ8zmbNo=";
    name = "clearpathrobotics-wireless-018ed4706d02dab79108db6abc4239fb141cd21d";
  });
in
{
  wireless_msgs = pkg "sha256-i8GeRFZKTQmcS2R9kLHYsFKTqjxvJ0MXoMNaSgD1p8s=" "wireless_msgs";
  wireless_watcher = pkg "sha256-WWDFa9BTxEAC0lIpsK+mVo9xcLiTExxVjpu2EYUEi6Y=" "wireless_watcher";
}
