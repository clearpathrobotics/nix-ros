{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "toposens/public";
    repo = "toposens-library";
    rev = "148fd04ba68e35347480f63ce35e7f0eb13c814b";
    hash = "sha256-WPukdeER0z8/XeoQdC7dMZymMVSnI7Ck6IPscsYrc7Y=";
    name = "toposens-public-toposens-library-148fd04ba68e35347480f63ce35e7f0eb13c814b";
  });
in
{
  toposens-library = pkg "sha256-WPukdeER0z8/XeoQdC7dMZymMVSnI7Ck6IPscsYrc7Y=" ".";
}
