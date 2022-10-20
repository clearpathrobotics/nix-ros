{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "message_generation";
    rev = "6dd393ba9c6a398784da4039c162fc9186f19796";
    hash = "sha256-OcZUypiOwRulERTbxJV5sMzsSKXMMqWkJFWQvexUZtQ=";
    name = "ros-message_generation-6dd393ba9c6a398784da4039c162fc9186f19796";
  });
in
{
  message_generation = pkg "sha256-OcZUypiOwRulERTbxJV5sMzsSKXMMqWkJFWQvexUZtQ=" ".";
}
