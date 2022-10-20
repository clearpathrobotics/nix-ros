{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "rosparam_shortcuts";
    rev = "ec79b06455da1f1ad1f9771e1e617af3027b6102";
    hash = "sha256-5YdaaNJVsHBsf52nGavuA8MPA9G9EDtIq2b1jwQ5fP8=";
    name = "PickNikRobotics-rosparam_shortcuts-ec79b06455da1f1ad1f9771e1e617af3027b6102";
  });
in
{
  rosparam_shortcuts = pkg "sha256-5YdaaNJVsHBsf52nGavuA8MPA9G9EDtIq2b1jwQ5fP8=" ".";
}
