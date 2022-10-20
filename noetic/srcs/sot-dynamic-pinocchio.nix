{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "sot-dynamic-pinocchio";
    rev = "073699c0ba42b13646ff216ae1f9e869d91aa24f";
    hash = "sha256-NSjui14XhwuLETQ83gUizAa78uNTZLGJ7h4aETgSnOk=";
    name = "stack-of-tasks-sot-dynamic-pinocchio-073699c0ba42b13646ff216ae1f9e869d91aa24f";
  });
in
{
  sot-dynamic-pinocchio = pkg "sha256-NSjui14XhwuLETQ83gUizAa78uNTZLGJ7h4aETgSnOk=" ".";
}
