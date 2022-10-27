{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "BehaviorTree";
    repo = "BehaviorTree.CPP";
    rev = "0d7b7c33fa0fcab79149e8cfa9d5ada6de3797a3";
    hash = "sha256-M5G/9opH49BwjO+coMi22iOk4fIQ/9U3YOceIy7q0QA=";
    name = "BehaviorTree-BehaviorTree.CPP-0d7b7c33fa0fcab79149e8cfa9d5ada6de3797a3";
  });
in
{
  behaviortree_cpp = pkg "sha256-M5G/9opH49BwjO+coMi22iOk4fIQ/9U3YOceIy7q0QA=" ".";
}
