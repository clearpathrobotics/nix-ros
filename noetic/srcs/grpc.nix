{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "CogRob";
    repo = "catkin_grpc";
    rev = "40c3a270232bf64a519181cad0385bfa8ef5d98b";
    hash = "sha256-ZWO65dsiQw1JZ6yIEJEKb3xluwT3zETCeskZAMf2fDI=";
    name = "CogRob-catkin_grpc-40c3a270232bf64a519181cad0385bfa8ef5d98b";
  });
in
{
  grpc = pkg "sha256-h4npK4/Op3K2aEDjjThObTIozwcIh9htvPBS+IsrRWM=" "grpc";
}
