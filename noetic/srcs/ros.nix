{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "ros";
    rev = "93d8da32091b8b43702eab5d3202f4511dfeb7dc";
    hash = "sha256-PV53YQmYFzcXaNAY8gYmw6VfO2AK8zps6SLxunQPgK4=";
    name = "ros-ros-93d8da32091b8b43702eab5d3202f4511dfeb7dc";
  });
in
{
  mk = pkg "sha256-F5Vd+XSjwoFpZ1e8iHMFQuDQCvHkwJEH2j2mxUxfOpY=" "core/mk";
  ros = pkg "sha256-LwupQJ89RqG5iPdwo6oiUHU7MrkoBDV4i3Gc2n/2uRo=" "ros";
  rosbash = pkg "sha256-pEBUV90tgqSkuKUuBma/ZuHSZ+rdFXeClxgWWihtu3w=" "tools/rosbash";
  rosboost_cfg = pkg "sha256-vLOHkdYoxXK128ar55W+/BIjNcUAoLoUoS6PzIF/f4U=" "tools/rosboost_cfg";
  rosbuild = pkg "sha256-qUgOjQyM/6dlKzeMDXY0ryLrWtsykBJpxj6QuwdcODw=" "core/rosbuild";
  rosclean = pkg "sha256-KKH+G2oU6SZzq2PFe3x2dvQ6tfQjdqvM0v3yn0VIeR8=" "tools/rosclean";
  roscreate = pkg "sha256-SAFRmCTtzWkiWISEsUnOl3n78NxX3VKIm8gFk1xZTF8=" "tools/roscreate";
  roslang = pkg "sha256-eL3uvA8RE4Btk6Ne26hX53MBs8PCNFtCGPJ0Nf/2Zfg=" "core/roslang";
  roslib = pkg "sha256-ozTEQ7222XgrNpDQlrq6BpJFb1U8g5SzqOtV9D8N3HU=" "core/roslib";
  rosmake = pkg "sha256-2IUCC/gQH2T5lHpiErzVXDhOcOBWjNdp6f6+SNKy6iA=" "tools/rosmake";
  rosunit = pkg "sha256-73auw4jkBM32QRE3VG7XrRC8cM0Z5boh9zkallWFzPQ=" "tools/rosunit";
}
