{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "orocos_kdl_vendor";
    rev = "60532cef2935bdb03aa0cf197108896773c29e42";
    hash = "sha256-HS3CV3GPCUCDLNztr8iMgpj5p8wlAdejp06NajU8oK8=";
    name = "ros2-orocos_kdl_vendor-60532cef2935bdb03aa0cf197108896773c29e42";
  });
in
{
  orocos_kdl_vendor = pkg "sha256-8878heWJ0CVI+sqZ4A7SwqJ76ZnDqkCzmA/OPn7Ahk8=" "orocos_kdl_vendor";
  python_orocos_kdl_vendor = pkg "sha256-x4xJ/ugl2IkKnTrezCQgIrkPr3KR+KI1Q7+Y69Wggis=" "python_orocos_kdl_vendor";
}
