{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "openspur";
    repo = "yp-spur";
    rev = "c3c8faa05a05a49e57a9d40d94d3f36865414697";
    hash = "sha256-VmPfHu2+cbhWRUulkGgGd8kD0jTG2HliEQ1ILaAlbqI=";
    name = "openspur-yp-spur-c3c8faa05a05a49e57a9d40d94d3f36865414697";
  });
in
{
  ypspur = pkg "sha256-VmPfHu2+cbhWRUulkGgGd8kD0jTG2HliEQ1ILaAlbqI=" ".";
}
