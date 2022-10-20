{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "urdfdom";
    rev = "41838e1f3623e0538a402024b76f296dbbcbed9f";
    hash = "sha256-QoEKyz6yy7C+ZNYceljvpcJQPrDbWADv0yR3mWAE3X0=";
    name = "ros-urdfdom-41838e1f3623e0538a402024b76f296dbbcbed9f";
  });
in
{
  urdfdom = pkg "sha256-QoEKyz6yy7C+ZNYceljvpcJQPrDbWADv0yR3mWAE3X0=" ".";
}
