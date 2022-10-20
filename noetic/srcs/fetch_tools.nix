{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fetchrobotics";
    repo = "fetch_tools";
    rev = "230d5e8cec4cc8d99e75c42001230e346172be2f";
    hash = "sha256-0BFY9I59ZtV7FiGY7cMnt3FtUgy0Juh1NwNtqs92MLw=";
    name = "fetchrobotics-fetch_tools-230d5e8cec4cc8d99e75c42001230e346172be2f";
  });
in
{
  fetch_tools = pkg "sha256-0BFY9I59ZtV7FiGY7cMnt3FtUgy0Juh1NwNtqs92MLw=" ".";
}
