{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "xacro";
    rev = "a8738a4c632fc767c05b9a3bf55209b71ea65f91";
    hash = "sha256-wQEPWoQzNW2+zyHvZBbxePDRW65svUGoGydctfe0gmQ=";
    name = "ros-xacro-a8738a4c632fc767c05b9a3bf55209b71ea65f91";
  });
in
{
  xacro = pkg "sha256-wQEPWoQzNW2+zyHvZBbxePDRW65svUGoGydctfe0gmQ=" ".";
}
