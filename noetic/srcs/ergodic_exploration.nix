{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "bostoncleek";
    repo = "ergodic_exploration";
    rev = "4986ad4ff109a51c971b55d007f71f5de1eacf81";
    hash = "sha256-umDwQjRbFMxN5q26ZU7yBxKwKLeL7qu3+cCn9X6Vy7A=";
    name = "bostoncleek-ergodic_exploration-4986ad4ff109a51c971b55d007f71f5de1eacf81";
  });
in
{
  ergodic_exploration = pkg "sha256-umDwQjRbFMxN5q26ZU7yBxKwKLeL7qu3+cCn9X6Vy7A=" ".";
}
