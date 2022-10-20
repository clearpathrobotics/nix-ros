{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "perception_pcl";
    rev = "eb8f009ca519fc6b5651ba3a125fe5ae04f67bb8";
    hash = "sha256-KH+7vIzq7qxu1wmMDy3E3HnjwC7wc4vUGMvj37cbJyU=";
    name = "ros-perception-perception_pcl-eb8f009ca519fc6b5651ba3a125fe5ae04f67bb8";
  });
in
{
  pcl_conversions = pkg "sha256-wwRfvN7cyB0FR39F82KzNiWwUlEdLgJjEpTE1KgE6cY=" "pcl_conversions";
  pcl_ros = pkg "sha256-AikqdZc9u8f+sOc+JSyLZcLBTjOVYTxeV4woGAhyXUE=" "pcl_ros";
  perception_pcl = pkg "sha256-1J5fNsyjyAPxqPE04i/TaOSRsIiQK4ZMRLRKEzEwMCU=" "perception_pcl";
}
