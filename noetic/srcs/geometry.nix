{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "geometry";
    rev = "63c3c7b404b8f390061bdadc5bc675e7ae5808be";
    hash = "sha256-MLxpcHOC2rwR11OdVaEehT/y0xXUTm+OMCvgSTsdJDU=";
    name = "ros-geometry-63c3c7b404b8f390061bdadc5bc675e7ae5808be";
  });
in
{
  eigen_conversions = pkg "sha256-AbCYjRObZHwXMC1klAhXbwqTLc/WIkqWhqlTKc1Djx4=" "eigen_conversions";
  geometry = pkg "sha256-2PW4Lp75Fah0yzlRAtnUgfi9TiJzl7Y+AEB9l9ew3sY=" "geometry";
  kdl_conversions = pkg "sha256-o7sWS29lTTkBCk6WxnE6PEbo7BcD2ViKUcRdOsfA1rg=" "kdl_conversions";
  tf = pkg "sha256-G/sSTAsJs1/hlV4frwC7reukT1Ja1CRAdS3fNP43BXM=" "tf";
  tf_conversions = pkg "sha256-f/Mcyk9KYtu7J6zDlAmphgL61F4gi+TUNOQIP4uYQrs=" "tf_conversions";
}
