{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "teleop_twist_joy";
    rev = "1ca55330f076af7647d2fd51bb81b80ad2a9145f";
    hash = "sha256-IBCJmXbeHctJ+TgxITgnCL+GQLj59scJngXsgNaA2Yo=";
    name = "ros2-teleop_twist_joy-1ca55330f076af7647d2fd51bb81b80ad2a9145f";
  });
in
{
  teleop_twist_joy = pkg "sha256-IBCJmXbeHctJ+TgxITgnCL+GQLj59scJngXsgNaA2Yo=" ".";
}
