{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "BehaviorTree";
    repo = "BehaviorTree.CPP";
    rev = "90c2f47df58bf475ef0b119cd1499873527f2df3";
    hash = "sha256-SHmSSX9A55xhewfQdOY0knA3vOmBLG9WbYDbOhcbhGw=";
    name = "BehaviorTree-BehaviorTree.CPP-90c2f47df58bf475ef0b119cd1499873527f2df3";
  });
in
{
  behaviortree_cpp = pkg "sha256-SHmSSX9A55xhewfQdOY0knA3vOmBLG9WbYDbOhcbhGw=" ".";
}
