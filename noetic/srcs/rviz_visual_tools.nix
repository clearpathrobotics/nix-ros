{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "rviz_visual_tools";
    rev = "240b6ecf0f05ff5c08d4382b18db8c47b091663d";
    hash = "sha256-ze1VVIKFmNDRxJPZymIVS6l0bVJ1Z3dLZUYP2r/KAag=";
    name = "PickNikRobotics-rviz_visual_tools-240b6ecf0f05ff5c08d4382b18db8c47b091663d";
  });
in
{
  rviz_visual_tools = pkg "sha256-ze1VVIKFmNDRxJPZymIVS6l0bVJ1Z3dLZUYP2r/KAag=" ".";
}
