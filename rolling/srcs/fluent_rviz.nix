{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ForteFibre";
    repo = "FluentRviz";
    rev = "b3b4dbf14ac033a03890db76078a87c4baa54321";
    hash = "sha256-xGgkjTDYKHpJz8ZFrO1gXfthsdOmTNGYaz48pt/ToLY=";
    name = "ForteFibre-FluentRviz-b3b4dbf14ac033a03890db76078a87c4baa54321";
  });
in
{
  fluent_rviz = pkg "sha256-xGgkjTDYKHpJz8ZFrO1gXfthsdOmTNGYaz48pt/ToLY=" ".";
}
