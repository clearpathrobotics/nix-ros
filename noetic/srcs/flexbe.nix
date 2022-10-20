{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "team-vigir";
    repo = "flexbe_behavior_engine";
    rev = "8e2ca45fbdb68818599944d2d155f9367b607c5c";
    hash = "sha256-ZFaHQ8UzlgMs0ibStYf/DNK/8XVwYkHLNqT3hewJlZA=";
    name = "team-vigir-flexbe_behavior_engine-8e2ca45fbdb68818599944d2d155f9367b607c5c";
  });
in
{
  flexbe_behavior_engine = pkg "sha256-hibHtRJF+j5utUMiojrt0ceYMZnmDNfDVbKIavWwzCU=" "flexbe_behavior_engine";
  flexbe_core = pkg "sha256-vtdPbedhmwBKLtw4gyBSZd3c6o450708v9jUd/+gcMo=" "flexbe_core";
  flexbe_input = pkg "sha256-E+uaf3/L2ytgINyc545xvrT8lXOyuVEV4CoZ/y+2oP0=" "flexbe_input";
  flexbe_mirror = pkg "sha256-CHBixTds5zkp8V2BNC++1Jzf0OFJpw9VC0K6yXhBJY4=" "flexbe_mirror";
  flexbe_msgs = pkg "sha256-s9zeC9/in4oSXx8fBwCaD/5x/pBhszl+qC9H/hOwDAc=" "flexbe_msgs";
  flexbe_onboard = pkg "sha256-Hlv95jGgtsxefGyWZikzpswgTsLyD6a0gKG8wNxSuYQ=" "flexbe_onboard";
  flexbe_states = pkg "sha256-0qQZTLU0XtaZqOJJb5XXsqo4iaFLIQVEuzz+0yMeXJ4=" "flexbe_states";
  flexbe_testing = pkg "sha256-qnO42jZiLxtoVP7nazLE0rd2kq2ggGDshCe/zkpSZe4=" "flexbe_testing";
  flexbe_widget = pkg "sha256-mpitYl7gKVg6AV7cQn0VIUVGmrX+WkUmsqJ72aURQnc=" "flexbe_widget";
}
