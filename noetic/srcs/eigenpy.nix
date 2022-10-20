{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "eigenpy";
    rev = "e491c961c24e5860e21c63a596a7e8954598e51a";
    hash = "sha256-KI1VbBdP5pvoBWq3z3FBJJhUWifpEwNsREFMLOlPajI=";
    name = "stack-of-tasks-eigenpy-e491c961c24e5860e21c63a596a7e8954598e51a";
  });
in
{
  eigenpy = pkg "sha256-KI1VbBdP5pvoBWq3z3FBJJhUWifpEwNsREFMLOlPajI=" ".";
}
