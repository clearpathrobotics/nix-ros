{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "facontidavide";
    repo = "plotjuggler_msgs";
    rev = "8682e484c8e919b664f092f5359f6af5463b541f";
    hash = "sha256-5u9YAiJpgvBEJUCdd+Aqjnj60ukEteaomEY+rltOb50=";
    name = "facontidavide-plotjuggler_msgs-8682e484c8e919b664f092f5359f6af5463b541f";
  });
in
{
  plotjuggler_msgs = pkg "sha256-5u9YAiJpgvBEJUCdd+Aqjnj60ukEteaomEY+rltOb50=" ".";
}
