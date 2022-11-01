{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "BehaviorTree";
    repo = "BehaviorTree.CPP";
    rev = "b4396fe15faf7536c7052064b77c8638982cf44b";
    hash = "sha256-qALWG+FQanT2TCm/arur0TfEb345rVgL05TUqXdJ/iQ=";
    name = "BehaviorTree-BehaviorTree.CPP-b4396fe15faf7536c7052064b77c8638982cf44b";
  });
in
{
  behaviortree_cpp = pkg "sha256-qALWG+FQanT2TCm/arur0TfEb345rVgL05TUqXdJ/iQ=" ".";
}
